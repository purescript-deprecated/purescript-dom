module DOM.HTML.HTMLMediaElement.ReadyState (ReadyState(..)) where

import Prelude
import Data.Maybe (Maybe(..))
import Data.Enum (Enum, Cardinality(..), defaultSucc, defaultPred)

data ReadyState
  = HAVE_NOTHING
  | HAVE_METADATA
  | HAVE_CURRENT_DATA
  | HAVE_FUTURE_DATA
  | HAVE_ENOUGH_DATA

instance eqReadyState :: Eq ReadyState where
  eq HAVE_NOTHING HAVE_NOTHING = true
  eq HAVE_METADATA HAVE_METADATA = true
  eq HAVE_CURRENT_DATA HAVE_CURRENT_DATA = true
  eq HAVE_FUTURE_DATA HAVE_FUTURE_DATA = true
  eq HAVE_ENOUGH_DATA HAVE_ENOUGH_DATA = true
  eq _ _ = false

instance ordReadyState :: Ord ReadyState where
  compare x y = compare (fromEnumReadyState x) (fromEnumReadyState y)

instance boundedReadyState :: Bounded ReadyState where
  bottom = HAVE_NOTHING
  top = HAVE_ENOUGH_DATA

instance boundedOrdReadyState :: BoundedOrd ReadyState

instance enumReadyState :: Enum ReadyState where
  cardinality = Cardinality 5
  succ = defaultSucc toEnumReadyState fromEnumReadyState
  pred = defaultPred toEnumReadyState fromEnumReadyState
  toEnum = toEnumReadyState
  fromEnum = fromEnumReadyState

instance showReadyState :: Show ReadyState where
  show HAVE_NOTHING = "HAVE_NOTHING"
  show HAVE_METADATA = "HAVE_METADATA"
  show HAVE_CURRENT_DATA = "HAVE_CURRENT_DATA"
  show HAVE_FUTURE_DATA = "HAVE_FUTURE_DATA"
  show HAVE_ENOUGH_DATA = "HAVE_ENOUGH_DATA"

toEnumReadyState :: Int -> Maybe ReadyState
toEnumReadyState 0 = Just HAVE_NOTHING
toEnumReadyState 1 = Just HAVE_METADATA
toEnumReadyState 2 = Just HAVE_CURRENT_DATA
toEnumReadyState 3 = Just HAVE_FUTURE_DATA
toEnumReadyState 4 = Just HAVE_ENOUGH_DATA
toEnumReadyState _ = Nothing

fromEnumReadyState :: ReadyState -> Int
fromEnumReadyState HAVE_NOTHING = 0
fromEnumReadyState HAVE_METADATA = 1
fromEnumReadyState HAVE_CURRENT_DATA = 2
fromEnumReadyState HAVE_FUTURE_DATA = 3
fromEnumReadyState HAVE_ENOUGH_DATA = 4
