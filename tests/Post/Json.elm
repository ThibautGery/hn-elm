module Post.Json exposing (..)

import Test exposing (..)
import Expect
import Posts.Json exposing(postDecoder)
import Json.Decode




tests : Test
tests =
    describe "Post Module"
        [ describe "Decoder"
            [ test "Should decode a post" <|
                \() ->
                  let
                    actualPost = Json.Decode.decodeString
                        postDecoder
                        """
                        {
                          "by" : "dhouston",
                          "descendants" : 71,
                          "id" : 8863,
                          "kids" : [ 8952, 9224, 8917, 8884, 8887, 8943, 8869, 8958, 9005, 9671, 8940, 9067, 8908, 9055, 8865, 8881, 8872, 8873, 8955, 10403, 8903, 8928, 9125, 8998, 8901, 8902, 8907, 8894, 8878, 8870, 8980, 8934, 8876 ],
                          "score" : 111,
                          "time" : 1175714200,
                          "title" : "My YC app: Dropbox - Throw away your USB drive",
                          "type" : "story",
                          "url" : "http://www.getdropbox.com/u/2/screencast.html"
                        }
                        """
                  in
                    Expect.equal actualPost (Ok
                      { id = 8863
                      , by = "dhouston"
                      , postType = "story"
                      , descendants = 71
                      , score = 111
                      , time = 1175714200
                      , title = "My YC app: Dropbox - Throw away your USB drive"
                      , url = "http://www.getdropbox.com/u/2/screencast.html"
                    })
            , test "Should not decode badly format json" <|
                \() ->
                  let
                    actualPost = Json.Decode.decodeString
                        postDecoder
                        """
                        {
                          "
                        }
                        """
                  in
                    Expect.equal actualPost (Err "Given an invalid JSON: Unexpected token \n in JSON at position 54")
            ]
            , test "Should return an error if no url" <|
                \() ->
                  let
                    actualPost = Json.Decode.decodeString
                        postDecoder
                        """
                        {
                          "by" : "dhouston"
                        }
                        """
                  in
                    Expect.equal actualPost (Err "Expecting an object with a field named `url` but instead got: {\"by\":\"dhouston\"}")

        ]
