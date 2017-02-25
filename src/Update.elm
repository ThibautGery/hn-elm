module Update exposing (..)

import Msgs exposing (Msg(..))
import Models exposing (Model)
import Posts.Update

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        PostsMsg postMsg ->
            let
                ( posts, cmd ) =
                    Posts.Update.update postMsg model.posts
            in
                ( { model | posts = posts}, Cmd.map PostsMsg cmd )
