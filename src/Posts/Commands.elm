module Posts.Commands exposing(..)

import Http
import Posts.Msgs exposing(..)
import Json.Decode as Decode


fetchFrontPageId : Cmd Msg
fetchFrontPageId =
    Http.get fetchFrontPageIdUrl (Decode.list Decode.string)
        |> Http.send FrontPageIdReceived


fetchFrontPageIdUrl : String
fetchFrontPageIdUrl =
    "https://hacker-news.firebaseio.com/v0/topstories.json"
