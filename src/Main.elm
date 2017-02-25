module Main exposing (..)

import Html exposing (Html, div, text, program)
import Msgs exposing (Msg)
import Models exposing (Model, initModel)
import Update exposing (update)
import View exposing (view)
import Posts.Commands exposing(fetchFrontPageId)

init : ( Model, Cmd Msg )
init =
    ( initModel, Cmd.map Msgs.PostsMsg fetchFrontPageId )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
