import { Api } from '~/api/http-client'

declare module 'vuex/types/index' {
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  interface Store<S> {
    $api: Api<unknown>
  }
}
