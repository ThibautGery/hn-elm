module View exposing (..)

import Html exposing (Html, div, text)
import Msgs exposing (Msg(..))
import Models exposing (Model)
import Posts.List

view : Model -> Html Msg
view model =
    div []
        [ nav
        ,  Html.map Msgs.PostMsg (Posts.List.view model.posts )
        ]



nav : Html Msg
nav = div []
          [ text "navigation" ]
