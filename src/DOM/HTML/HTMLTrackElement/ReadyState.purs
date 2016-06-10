module DOM.HTML.HTMLTrackElement.ReadyState (ReadyState(..)) where

import Prelude
import Data.Maybe (Maybe(..))
import Data.Enum (class Enum, class BoundedEnum, Cardinality(..), defaultSucc, defaultPred)

data ReadyState
  = NONE
  | LOADING
  | LOADED
  | ERROR

derive instance eqReadyState :: Eq ReadyState

instance ordReadyState :: Ord ReadyState where
  compare x y = compare (fromEnumReadyState x) (fromEnumReadyState y)

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
toEnumReadyState 0 = Just NONE
toEnumReadyState 1 = Just LOADING
toEnumReadyState 2 = Just LOADED
toEnumReadyState 3 = Just ERROR
toEnumReadyState _ = Nothing

fromEnumReadyState :: ReadyState -> Int
fromEnumReadyState NONE = 0
fromEnumReadyState LOADING = 1
fromEnumReadyState LOADED = 2
fromEnumReadyState ERROR = 3
