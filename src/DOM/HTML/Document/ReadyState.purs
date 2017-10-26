module DOM.HTML.Document.ReadyState where

import Prelude
import Data.Enum (class Enum, class BoundedEnum, Cardinality(..), defaultSucc, defaultPred)
import Data.Maybe (Maybe(..))

data ReadyState
  = Loading
  | Interactive
  | Complete

derive instance eqReadyState :: Eq ReadyState
derive instance ordReadyState :: Ord ReadyState

instance showReadyState :: Show ReadyState where
  show = case _ of
    Loading -> "Loading"
    Interactive -> "Interactive"
    Complete -> "Complete"

printReadyState :: ReadyState -> String
printReadyState = case _ of
  Loading -> "loading"
  Interactive -> "interactive"
  Complete -> "complete"

parseReadyState :: String -> Maybe ReadyState
parseReadyState = case _ of
  "loading" -> Just Loading
  "interactive" -> Just Interactive
  "complete" -> Just Complete
  _ -> Nothing

instance boundedReadyState :: Bounded ReadyState where
  bottom = Loading
  top = Complete

instance enumReadyState :: Enum ReadyState where
  succ = defaultSucc toEnumReadyState fromEnumReadyState
  pred = defaultPred toEnumReadyState fromEnumReadyState

instance boundedEnumReadyState :: BoundedEnum ReadyState where
  cardinality = Cardinality 3
  toEnum = toEnumReadyState
  fromEnum = fromEnumReadyState

toEnumReadyState :: Int -> Maybe ReadyState
toEnumReadyState =
  case _ of
    0 -> Just Loading
    1 -> Just Interactive
    2 -> Just Complete
    _ -> Nothing

fromEnumReadyState :: ReadyState -> Int
fromEnumReadyState =
  case _ of
    Loading -> 0
    Interactive -> 1
    Complete -> 2
