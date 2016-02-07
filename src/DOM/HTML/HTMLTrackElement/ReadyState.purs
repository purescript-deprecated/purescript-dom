module DOM.HTML.HTMLTrackElement.ReadyState (ReadyState(..)) where

import Prelude
import Data.Maybe (Maybe(..))
import Data.Enum (Enum, Cardinality(..), defaultSucc, defaultPred)

data ReadyState
  = NONE
  | LOADING
  | LOADED
  | ERROR

instance eqReadyState :: Eq ReadyState where
  eq NONE NONE = true
  eq LOADING LOADING = true
  eq LOADED LOADED = true
  eq ERROR ERROR = true
  eq _ _ = false

instance ordReadyState :: Ord ReadyState where
  compare x y = compare (fromEnumReadyState x) (fromEnumReadyState y)

instance boundedReadyState :: Bounded ReadyState where
  bottom = NONE
  top = ERROR

instance boundedOrdReadyState :: BoundedOrd ReadyState

instance enumReadyState :: Enum ReadyState where
  cardinality = Cardinality 4
  succ = defaultSucc toEnumReadyState fromEnumReadyState
  pred = defaultPred toEnumReadyState fromEnumReadyState
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
