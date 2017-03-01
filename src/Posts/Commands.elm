module Posts.Commands exposing(..)

import Http

import Posts.Msgs exposing(..)
import Posts.Models exposing(..)
import Json.Decode exposing (int, list)
import Posts.Json exposing(..)



fetchFrontPageId : Cmd Msg
fetchFrontPageId =
    Http.get fetchFrontPageIdUrl (list int)
        |> Http.send FrontPageIdReceived


fetchFrontPageIdUrl : String
fetchFrontPageIdUrl =
    "https://hacker-news.firebaseio.com/v0/topstories.json"


fetchPost : String -> Cmd Msg
fetchPost id =
    Http.get (fetchOneItemUrl id) postDecoder
        |> Http.send PostReceived



fetchOneItemUrl : String -> String
fetchOneItemUrl id =
    "https://hacker-news.firebaseio.com/v0/item/" ++ id ++ ".json"
