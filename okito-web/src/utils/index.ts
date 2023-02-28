import { useEffect, useRef, useState } from 'react'
import { sortOrder } from '../consts'

export const useMount = (callback: () => void) => {
  useEffect(() => {
    callback()
  }, [])
}

export const useDebounce = <V>(value: V, delay?: number) => {
  const [debouncedValue, setDebouncedValue] = useState(value)
  useEffect(() => {
    const timeout = setTimeout(() => setDebouncedValue(value), delay)
    return () => clearTimeout(timeout)
  }, [value, delay])
  return debouncedValue
}

type KeysMatching<T, V> = {
  [K in keyof T]-?: T[K] extends V ? K : never
}[keyof T]

export const useSort = <
  A extends Record<K, unknown[]>,
  K extends KeysMatching<A, unknown[]>
>(
  array: A[],
  propertyName: keyof A[K][number],
  order: sortOrder
) => {
  return [...array].sort((a, b) =>
    order === 'desc'
      ? a[propertyName] < b[propertyName]
        ? 1
        : -1
      : a[propertyName] > b[propertyName]
      ? 1
      : -1
  )
}

export const useMountRef = () => {
  const mountedRef = useRef(false)
  useEffect(() => {
    mountedRef.current = true
    return () => {
      mountedRef.current = false
    }
  })
  return mountedRef
}
