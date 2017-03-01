module Posts.Msgs exposing(..)

import Posts.Models exposing(Post)
import Http

type Msg = FrontPageIdReceived (Result Http.Error (List Int))
    | PostReceived (Result Http.Error Post)
