module DOM.Websocket.ReadyState where

import Prelude
import Data.Enum (Cardinality(..), class BoundedEnum, defaultPred, defaultSucc, class Enum)
import Data.Maybe (Maybe(..))

data ReadyState
  = Connecting
  | Open
  | Closing
  | Closed

derive instance eqReadyState :: Eq ReadyState
derive instance ordReadyState :: Ord ReadyState

instance boundedReadyState :: Bounded ReadyState where
  bottom = Connecting
  top = Closed

instance enumReadyState :: Enum ReadyState where
  succ = defaultSucc toEnumReadyState fromEnumReadyState
  pred = defaultPred toEnumReadyState fromEnumReadyState

instance boundedEnumReadyState :: BoundedEnum ReadyState where
  cardinality = Cardinality 4
  toEnum = toEnumReadyState
  fromEnum = fromEnumReadyState

instance showReadyState :: Show ReadyState where
  show Connecting = "Connecting"
  show Open = "Open"
  show Closing = "Closing"
  show Closed = "Closed"

toEnumReadyState :: Int -> Maybe ReadyState
toEnumReadyState =
  case _ of
    0 -> Just Connecting
    1 -> Just Open
    2 -> Just Closing
    3 -> Just Closed
    _ -> Nothing

fromEnumReadyState :: ReadyState -> Int
fromEnumReadyState =
  case _ of
    Connecting -> 0
    Open -> 1
    Closing -> 2
    Closed -> 3
