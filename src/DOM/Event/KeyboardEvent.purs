-- | Functions that expose the KeyboardEvent API.
-- |
-- | https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent
-- |
-- | Note: The deprecated attributes `.keyCode`, `.charCode`, and
-- | `.which` are deliberately omitted. It is currently recommended to use
-- | `KeyboardEvent.key` instead.
-- | 
-- | If browser support for `KeyboardEvent.key` is not yet widespread
-- | enough for your use case, consider using a polyfill
-- | (e.g. https://github.com/inexorabletash/polyfill#keyboard-events)
-- | or use the purescript FFI to access the deprecated attributes you
-- | want to work with.
-- |
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

-- | A non-empty Unicode character string containing the printable representation
-- | of the key, if available.
foreign import key :: KeyboardEvent -> String

-- | Returns a string representing a physical key on the keyboard. Not
-- | affected by keyboard layout or state of the modifier keys.
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
