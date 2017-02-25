module Update exposing (..)

import Msgs exposing (Msg(..))
import Models exposing (Model)
import Posts.Update

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        PostsMsg postMsg ->
            let
                ( posts, frontPageIds, cmd ) =
                    Posts.Update.update postMsg model.posts model.frontPageIds
            in
                ( { model | posts = posts, frontPageIds = frontPageIds}, Cmd.map PostsMsg cmd )
