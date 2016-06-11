module DOM.HTML.HTMLTrackElement.ReadyState where

import Prelude
import Data.Maybe (Maybe(..))
import Data.Enum (class Enum, class BoundedEnum, Cardinality(..), defaultSucc, defaultPred)

data ReadyState
  = NONE
  | LOADING
  | LOADED
  | ERROR

derive instance eqReadyState :: Eq ReadyState
derive instance ordReadyState :: Ord ReadyState

instance boundedReadyState :: Bounded ReadyState where
  bottom = NONE
  top = ERROR

instance enumReadyState :: Enum ReadyState where
  succ = defaultSucc toEnumReadyState fromEnumReadyState
  pred = defaultPred toEnumReadyState fromEnumReadyState

instance boundedEnumReadyState :: BoundedEnum ReadyState where
  cardinality = Cardinality 4
  toEnum = toEnumReadyState
  fromEnum = fromEnumReadyState

instance showReadyState :: Show ReadyState where
  show NONE = "NONE"
  show LOADING = "LOADING"
  show LOADED = "LOADED"
  show ERROR = "ERROR"

toEnumReadyState :: Int -> Maybe ReadyState
toEnumReadyState =
  case _ of
    0 -> Just NONE
    1 -> Just LOADING
    2 -> Just LOADED
    3 -> Just ERROR
    _ -> Nothing

fromEnumReadyState :: ReadyState -> Int
fromEnumReadyState =
  case _ of
    NONE -> 0
    LOADING -> 1
    LOADED -> 2
    ERROR -> 3
