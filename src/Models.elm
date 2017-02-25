module Models exposing (..)

import Posts.Models exposing(Post)

type alias Model =
  { posts: List Post
  }

initModel: Model
initModel =
  { posts = []
  }
