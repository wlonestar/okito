import { useCallback, useReducer, useState } from 'react'
import { useMountRef } from './index'

interface State<D> {
  error: Error | null
  data: D | null
  stat: 'idle' | 'loading' | 'error' | 'success'
}

const defaultInitialState: State<null> = {
  error: null,
  data: null,
  stat: 'idle',
}

const defaultConfig = {
  throwOnError: false,
}

const useSafeDispatch = <T>(dispatch: (...args: T[]) => void) => {
  const mountedRef = useMountRef()
  return useCallback(
    (...args: T[]) => (mountedRef.current ? dispatch(...args) : void 0),
    [dispatch, mountedRef]
  )
}

export const useAsync = <D>(
  initialState?: State<D>,
  initialConfig?: typeof defaultConfig
) => {
  const config = { ...defaultConfig, ...initialConfig }
  const [state, dispatch] = useReducer(
    (state: State<D>, action: Partial<State<D>>) => ({ ...state, ...action }),
    {
      ...defaultInitialState,
      ...initialState,
    }
  )
  const safeDispatch = useSafeDispatch(dispatch)
  const [retry, setRetry] = useState(() => () => {})

  const setData = useCallback(
    (data: D) =>
      safeDispatch({
        error: null,
        data,
        stat: 'success',
      }),
    [safeDispatch]
  )

  const setError = useCallback(
    (error: Error) =>
      safeDispatch({
        error,
        data: null,
        stat: 'error',
      }),
    [safeDispatch]
  )

  const run = useCallback(
    (promise: Promise<D>, runConfig?: { retry: () => Promise<D> }) => {
      if (!promise || !promise.then) {
        throw new Error('please input data of type Promise')
      }
      setRetry(() => () => {
        if (runConfig?.retry) {
          run(runConfig?.retry(), runConfig)
        }
      })
      safeDispatch({ stat: 'loading' })
      return promise
        .then((data) => {
          setData(data)
          return data
        })
        .catch((error) => {
          setError(error)
          if (config.throwOnError) {
            return Promise.reject(error)
          }
          return error
        })
    },
    [config.throwOnError, setData, setError, safeDispatch]
  )

  return {
    isIdle: state.stat === 'idle',
    isLoading: state.stat === 'loading',
    isError: state.stat === 'error',
    isSuccess: state.stat === 'success',
    run,
    setData,
    setError,
    retry,
    ...state,
  }
}
