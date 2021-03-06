module Main exposing (..)

import Html
import Messages exposing (Msg(..))
import Models exposing (Model, initialModel)
import Update exposing (update)
import View exposing (view)
import Subscriptions exposing (subscriptions)

init : ( Model, Cmd Msg )
init =
  ( initialModel, Cmd.none )

main =
  Html.program
  { init = init
  , view = view
  , update = update
  , subscriptions = subscriptions
  }
