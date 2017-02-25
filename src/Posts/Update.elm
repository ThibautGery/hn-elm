module Posts.Update exposing(update)

import Posts.Models exposing(Post)
import Posts.Msgs exposing(Msg)

update: Msg -> List Post -> List String -> (List Post, List String, Cmd Msg)
update msg posts ids = (posts, ids, Cmd.none)
