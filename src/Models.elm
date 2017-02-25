module Models exposing (..)

import Posts.Models exposing(Post)

type alias Model =
  { posts: List Post
  , frontPageIds: List String
  }

initModel: Model
initModel =
  { posts = []
  , frontPageIds = []
  }
