module Posts.Json exposing(..)

import Json.Decode exposing (int, string, list, Decoder, bool)
import Json.Decode.Pipeline exposing (decode, required)

import Posts.Models exposing(..)

postDecoder : Decoder Post
postDecoder =
  decode Post
        |> required "id" int
        |> required "by" string
        |> required "type" string
        |> required "title" string
        |> required "score" int
        |> required "descendants" int
        |> required "time" int
        |> required "url" string
