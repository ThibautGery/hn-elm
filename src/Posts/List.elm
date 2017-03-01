module Posts.List exposing(view)

import Html exposing (..)

import Posts.Msgs exposing(Msg)
import Posts.Models exposing(Post)

view : List Post -> Html Msg
view posts =
    div []
        [text "list of the posts"]
        --(List.map showRow posts)



showRow: Post -> Html Msg
showRow post = div []
              [ text post.title
              , text post.by
              , text (toString post.score)
              , text post.postType
              ]
