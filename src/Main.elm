import Browser exposing (sandbox)
import Html exposing (div, text, input)
import Html.Attributes exposing (placeholder, style)
import Html.Events exposing (onInput)
import Pain exposing (pain)

main = sandbox
  { init = init
  , update = update
  , view = view
  }

init =
   {
     color = ""
   }

type Msg
  = ColorTyped String

update message model =
  case message of
    ColorTyped color ->
      {
        color = color
      }

view model =
  div
    [ style "color" model.color ]
    [
      text model.color
      , input [
        placeholder pain
        , onInput ColorTyped
      ]
      []
  ]