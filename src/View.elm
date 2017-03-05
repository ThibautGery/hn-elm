module View exposing (..)

import Html exposing (Html, div, text, nav, a, i)
import Html.Attributes exposing (class, href)
import Msgs exposing (Msg(..))
import Models exposing (Model)
import Posts.List

view : Model -> Html Msg
view model =
    div [ class "ui vertical masthead aligned segment"]
        [ div [ class "ui container"]
            [ header
            ,  Html.map Msgs.PostsMsg (Posts.List.view model.posts )
            ]
        ]



header : Html Msg
header = nav  [class "ui large secondary pointing menu"]
              [ a [ href "/hn-elm/"
                  , class "item"]
                [ i [class "home icon"] []
                , text "Elmer News"
                ]
              ]
