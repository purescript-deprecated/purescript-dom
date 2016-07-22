module DOM.Event.WheelEvent
  ( module T
  , eventToWheelEvent
  , deltaX
  , deltaY
  , deltaZ
  , deltaModeIndex
  , deltaMode
  , DeltaMode(..)
  , toEnumDeltaMode
  , fromEnumDeltaMode
  ) where

import Prelude
import Data.Enum (class BoundedEnum, class Enum, Cardinality(..), defaultPred, defaultSucc, toEnum)
import Data.Foreign (F, toForeign)
import Data.Maybe (Maybe(..), fromJust)
import DOM.Event.Types (Event, WheelEvent, readWheelEvent)
import DOM.Event.Types (WheelEvent, readWheelEvent, wheelEventToEvent) as T

eventToWheelEvent :: Event -> F WheelEvent
eventToWheelEvent = readWheelEvent <<< toForeign

foreign import deltaX :: WheelEvent -> Number

foreign import deltaY :: WheelEvent -> Number

foreign import deltaZ :: WheelEvent -> Number

foreign import deltaModeIndex :: WheelEvent -> Int

deltaMode :: Partial => WheelEvent -> DeltaMode
deltaMode = fromJust <<< toEnum <<< deltaModeIndex

data DeltaMode
  = Pixel
  | Line
  | Page

derive instance eqDeltaMode :: Eq DeltaMode
derive instance ordDeltaMode :: Ord DeltaMode

instance boundedDeltaMode :: Bounded DeltaMode where
  bottom = Pixel
  top = Page

instance enumDeltaMode :: Enum DeltaMode where
  succ = defaultSucc toEnumDeltaMode fromEnumDeltaMode
  pred = defaultPred toEnumDeltaMode fromEnumDeltaMode

instance boundedEnumDeltaMode :: BoundedEnum DeltaMode where
  cardinality = Cardinality 3
  toEnum = toEnumDeltaMode
  fromEnum = fromEnumDeltaMode

toEnumDeltaMode :: Int -> Maybe DeltaMode
toEnumDeltaMode =
  case _ of
    0 -> Just Pixel
    1 -> Just Line
    2 -> Just Page
    _ -> Nothing

fromEnumDeltaMode :: DeltaMode -> Int
fromEnumDeltaMode =
  case _ of
    Pixel -> 0
    Line -> 1
    Page -> 2
