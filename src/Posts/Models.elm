module Posts.Models exposing(Post)


type alias Post =
    { id : Int
    , by : String -- author
    , postType: String
    , title : String
    , score: Int
    , descendants: Int
    , time: Int
    , url: String
    }
