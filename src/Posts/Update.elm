module Posts.Update exposing(update)

import Posts.Models exposing(Post)
import Posts.Msgs exposing(..)
import Posts.Commands exposing(fetchPost)

update: Msg -> List Post -> List Int -> (List Post, List Int, Cmd Msg)
update msg posts ids =
  case msg of
    FrontPageIdReceived (Ok newIds) ->
      (posts, newIds, getFrontPagePost newIds |> Cmd.batch)

    FrontPageIdReceived (Err error) ->
      (posts, ids, Cmd.none)

    PostReceived (Ok post) ->
      (post :: posts, ids, Cmd.none)

    PostReceived (Err error) ->
      (posts, ids, Cmd.none)


getFrontPagePost: List Int -> List (Cmd Msg)
getFrontPagePost ids =
  List.map fetchPost (List.take 20 ids)
