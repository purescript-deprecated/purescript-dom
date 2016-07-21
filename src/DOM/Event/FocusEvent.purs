module DOM.Event.FocusEvent
  ( module T
  , eventToFocusEvent
  , relatedTarget
  ) where

import Prelude
import Data.Maybe (Maybe (..))
import Data.Nullable (Nullable, toMaybe)
import DOM.Event.Types (Event, EventTarget, FocusEvent)
import DOM.Event.Types (FocusEvent, focusEventToEvent, readFocusEvent) as T

eventToFocusEvent :: Event -> Maybe FocusEvent
eventToFocusEvent = _eventToFocusEvent Just Nothing

foreign import _eventToFocusEvent
  :: forall a
   . (a -> Maybe a)
  -> Maybe a
  -> Event
  -> Maybe FocusEvent

foreign import relatedTargetNullable :: FocusEvent -> Nullable EventTarget

relatedTarget :: FocusEvent -> Maybe EventTarget
relatedTarget = toMaybe <$> relatedTargetNullable
