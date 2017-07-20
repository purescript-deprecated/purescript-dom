module DOM.Event.MouseEvent
  ( module T
  , eventToMouseEvent
  , screenX
  , screenY
  , clientX
  , clientY
  , pageX
  , pageY
  , ctrlKey
  , shiftKey
  , altKey
  , metaKey
  , button
  , relatedTarget
  , buttons
  , getModifierState
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Foreign (F, toForeign)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import DOM (DOM)
import DOM.Event.Types (Event, EventTarget, MouseEvent, readMouseEvent)
import DOM.Event.Types (MouseEvent, mouseEventToEvent, readMouseEvent) as T

eventToMouseEvent :: Event -> F MouseEvent
eventToMouseEvent = readMouseEvent <<< toForeign

foreign import screenX :: MouseEvent -> Int

foreign import screenY :: MouseEvent -> Int

foreign import clientX :: MouseEvent -> Int

foreign import clientY :: MouseEvent -> Int

foreign import pageX :: MouseEvent -> Int

foreign import pageY :: MouseEvent -> Int

foreign import ctrlKey :: MouseEvent -> Boolean

foreign import shiftKey :: MouseEvent -> Boolean

foreign import altKey :: MouseEvent -> Boolean

foreign import metaKey :: MouseEvent -> Boolean

foreign import button :: MouseEvent -> Int

foreign import _relatedTarget :: MouseEvent -> Nullable EventTarget

relatedTarget :: MouseEvent -> Maybe EventTarget
relatedTarget = toMaybe <$> _relatedTarget

foreign import buttons :: MouseEvent -> Int

foreign import getModifierState
  :: forall eff
   . String
  -> MouseEvent
  -> Eff (dom :: DOM | eff) Boolean
