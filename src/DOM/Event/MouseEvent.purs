module DOM.Event.MouseEvent
  ( module T
  , eventToMouseEvent
  , screenX
  , screenY
  , clientX
  , clientY
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
import Data.Maybe (Maybe(..))
import Data.Nullable (Nullable, toMaybe)
import DOM (DOM)
import DOM.Event.Types (Event, EventTarget, MouseEvent)
import DOM.Event.Types (MouseEvent, mouseEventToEvent, readMouseEvent) as T

eventToMouseEvent :: Event -> Maybe MouseEvent
eventToMouseEvent = _eventToMouseEvent Just Nothing

foreign import _eventToMouseEvent
  :: forall a
   . (a -> Maybe a)
  -> Maybe a
  -> Event
  -> Maybe MouseEvent

foreign import screenX :: MouseEvent -> Int

foreign import screenY :: MouseEvent -> Int

foreign import clientX :: MouseEvent -> Int

foreign import clientY :: MouseEvent -> Int

foreign import ctrlKey :: MouseEvent -> Boolean

foreign import shiftKey :: MouseEvent -> Boolean

foreign import altKey :: MouseEvent -> Boolean

foreign import metaKey :: MouseEvent -> Boolean

foreign import button :: MouseEvent -> Int

foreign import relatedTargetNullable :: MouseEvent -> Nullable EventTarget

relatedTarget :: MouseEvent -> Maybe EventTarget
relatedTarget = toMaybe <$> relatedTargetNullable

foreign import buttons :: MouseEvent -> Int

foreign import getModifierState
  :: forall eff
   . String
  -> MouseEvent
  -> Eff (dom :: DOM | eff) Boolean
