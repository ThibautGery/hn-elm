module Posts.Update exposing(update)

import Posts.Models exposing(Post)
import Posts.Msgs exposing(..)

update: Msg -> List Post -> List Int -> (List Post, List Int, Cmd Msg)
update msg posts ids =
  case msg of
    FrontPageIdReceived (Ok newIds) ->
      (posts, newIds, Cmd.none)

    FrontPageIdReceived (Err error) ->
      (posts, ids, Cmd.none)

    PostReceived (Ok post) ->
      (posts, ids, Cmd.none)

    PostReceived (Err error) ->
      (posts, ids, Cmd.none)
