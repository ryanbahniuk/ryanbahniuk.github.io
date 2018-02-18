module Models exposing (..)

type alias Polygon =
  { id : Int
  , vertices : List Vertex
  }

type alias Coordinates =
  { x : Int
  , y : Int
  }

type alias Cursor =
  { coordinates : Coordinates
  }

type alias Vertex =
  { id : Int
  , coordinates : Coordinates
  , inFlight : Bool
  }

type alias Model =
  { polygons : List Polygon
  , cursor : Cursor
  , interactionCounter : Int
  , selectedPolygonId : Maybe Int
  }

initialCursor : Cursor
initialCursor =
  Cursor (Coordinates 0 0)

initialModel : Model
initialModel =
  { polygons = []
  , cursor = initialCursor
  , interactionCounter = 0
  , selectedPolygonId = Nothing
  }

initialPolygon : Int -> Coordinates -> Polygon
initialPolygon id coordinates =
  Polygon id [(initialVertex id coordinates)]

initialEmptyPolygon : Int -> Polygon
initialEmptyPolygon id =
  Polygon id []

initialVertex : Int -> Coordinates -> Vertex
initialVertex id coordinates =
  Vertex id coordinates False

