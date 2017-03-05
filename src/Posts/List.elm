module Posts.List exposing(view)

import Html exposing (Html, div, text, h4, a, b, i)
import Html.Attributes exposing (class, href)


import Posts.Msgs exposing(Msg)
import Posts.Models exposing(Post)

view : List Post -> Html Msg
view posts =
    div [ class "ui grid" ]
        (List.map showRow posts)



showRow: Post -> Html Msg
showRow post = div  [ class "row"]
                    [ div [ class "one wide column" ]
                          [ votes post ]
                    , div [ class "ui fifteen wide column grid" ]
                          [ title post
                          , author post
                          , discution post
                          ]
                    ]


votes: Post -> Html Msg
votes post = div [ class "ui mini statistic" ]
      [ div [ class "value"]
            [ text (toString post.score)]
      , div [ class "label"]
            [ text "Points"]
      ]

title: Post -> Html Msg
title post = div [ class "sixteen wide column"]
      [ a [ href post.url ]
          [ text post.title ]
      ]

author: Post -> Html Msg
author post = div [ class "two wide column" ]
      [ b []
          [ text "by: " ]
      , text post.by
      ]

discution: Post -> Html Msg
discution post = div  [ class "two wide column" ]
                      [ div   [ class "ui mini labeled button" ]
                              [ a [ class "ui mini basic button"
                                  , href (linkToHn post)
                                  ]
                                  [ i [class "comment icon"] []
                                  , text "Comment"]
                              , a [ class "ui mini basic left pointing label"
                                  , href (linkToHn post)
                                  ]
                                  [ text ( toString post.descendants) ]
                              ]
                      ]

linkToHn: Post -> String
linkToHn post = String.concat [ "https://news.ycombinator.com/item?id="
                      , (toString post.id)]
