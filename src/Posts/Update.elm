module Posts.Update exposing(update)

import Posts.Models exposing(Post)
import Posts.Msgs exposing(Msg)

update: Msg -> List Post -> (List Post, Cmd Msg)
update msg posts = (posts, Cmd.none) 
