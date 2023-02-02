import { useRouteError } from 'react-router-dom'

export const ErrorPage = () => {
  const error: unknown = useRouteError()
  console.error(error)

  return (
    <div>
      <h1>Oops!</h1>
      <p>Sorry, an unexpected error has occurred.</p>
      <p>
        {/*// @ts-ignore*/}
        <i>{error.statusText || error.Message}</i>
      </p>
    </div>
  )
}
