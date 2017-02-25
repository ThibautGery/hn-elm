module Posts.Msgs exposing(..)

import Http

type Msg = FrontPageIdReceived (Result Http.Error (List String))
