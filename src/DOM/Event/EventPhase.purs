module DOM.Event.EventPhase (EventPhase(..)) where

import Prelude

import Data.Enum (Enum, Cardinality(..), defaultSucc, defaultPred)
import Data.Maybe (Maybe(..))

data EventPhase
  = None
  | Capturing
  | AtTarget
  | Bubbling

instance eqEventPhase :: Eq EventPhase where
  eq None None = true
  eq Capturing Capturing = true
  eq AtTarget AtTarget = true
  eq Bubbling Bubbling = true
  eq _ _ = false

instance ordEventPhase :: Ord EventPhase where
  compare x y = compare (fromEnumEventPhase x) (fromEnumEventPhase y)

instance boundedEventPhase :: Bounded EventPhase where
  bottom = None
  top = Bubbling

instance boundedOrdEventPhase :: BoundedOrd EventPhase

instance enumEventPhase :: Enum EventPhase where
  cardinality = Cardinality 4
  succ = defaultSucc toEnumEventPhase fromEnumEventPhase
  pred = defaultPred toEnumEventPhase fromEnumEventPhase
  toEnum = toEnumEventPhase
  fromEnum = fromEnumEventPhase

toEnumEventPhase :: Int -> Maybe EventPhase
toEnumEventPhase 0 = Just None
toEnumEventPhase 1 = Just Capturing
toEnumEventPhase 2 = Just AtTarget
toEnumEventPhase 3 = Just Bubbling
toEnumEventPhase _ = Nothing

fromEnumEventPhase :: EventPhase -> Int
fromEnumEventPhase None = 0
fromEnumEventPhase Capturing = 1
fromEnumEventPhase AtTarget = 2
fromEnumEventPhase Bubbling = 3
