module Models exposing (..)

import Posts.Models exposing(Post)

type alias Model =
  { posts: List Post
  , frontPageIds: List Int
  }

initModel: Model
initModel =
  { posts = []
  , frontPageIds = []
  }
