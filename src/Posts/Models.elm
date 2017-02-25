module Posts.Models exposing(Post)


type alias Post =
    { id : String
    , by : String -- author
    , postType: String
    , author : String
    , title : String
    , score: Int
    , descendants: Int
    , deleted: Bool
    , dead: Bool
    , time: Int
    , url: String
    }
