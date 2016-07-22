module DOM.Event.KeyboardEvent
  ( module T
  , eventToKeyboardEvent
  , key
  , code
  , locationIndex
  , location
  , KeyLocation(..)
  , toEnumKeyLocation
  , fromEnumKeyLocation
  , ctrlKey
  , shiftKey
  , altKey
  , metaKey
  , repeat
  , isComposing
  , getModifierState
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Enum (class BoundedEnum, class Enum, Cardinality(..), defaultPred, defaultSucc, toEnum)
import Data.Foreign (F, toForeign)
import Data.Maybe (Maybe(..), fromJust)
import DOM (DOM)
import DOM.Event.Types (Event, KeyboardEvent, readKeyboardEvent)
import DOM.Event.Types (KeyboardEvent, keyboardEventToEvent, readKeyboardEvent) as T

eventToKeyboardEvent :: Event -> F KeyboardEvent
eventToKeyboardEvent = readKeyboardEvent <<< toForeign

foreign import key :: KeyboardEvent -> String

foreign import code :: KeyboardEvent -> String

foreign import locationIndex :: KeyboardEvent -> Int

location :: Partial => KeyboardEvent -> KeyLocation
location = fromJust <<< toEnum <<< locationIndex

data KeyLocation
  = Standard
  | Left
  | Right
  | Numpad

derive instance eqKeyLocation :: Eq KeyLocation
derive instance ordKeyLocation :: Ord KeyLocation

instance boundedKeyLocation :: Bounded KeyLocation where
  bottom = Standard
  top = Numpad

instance enumKeyLocation :: Enum KeyLocation where
  succ = defaultSucc toEnumKeyLocation fromEnumKeyLocation
  pred = defaultPred toEnumKeyLocation fromEnumKeyLocation

instance boundedEnumKeyLocation :: BoundedEnum KeyLocation where
  cardinality = Cardinality 4
  toEnum = toEnumKeyLocation
  fromEnum = fromEnumKeyLocation

toEnumKeyLocation :: Int -> Maybe KeyLocation
toEnumKeyLocation =
  case _ of
    0 -> Just Standard
    1 -> Just Left
    2 -> Just Right
    3 -> Just Numpad
    _ -> Nothing

fromEnumKeyLocation :: KeyLocation -> Int
fromEnumKeyLocation =
  case _ of
    Standard -> 0
    Left -> 1
    Right -> 2
    Numpad -> 3

foreign import ctrlKey :: KeyboardEvent -> Boolean

foreign import shiftKey :: KeyboardEvent -> Boolean

foreign import altKey :: KeyboardEvent -> Boolean

foreign import metaKey :: KeyboardEvent -> Boolean

foreign import repeat :: KeyboardEvent -> Boolean

foreign import isComposing :: KeyboardEvent -> Boolean

foreign import getModifierState
  :: forall eff
   . String
  -> KeyboardEvent
  -> Eff (dom :: DOM | eff) Boolean
