module DOM.Event.FocusEvent
  ( module T
  , eventToFocusEvent
  , relatedTarget
  ) where

import Prelude
import Data.Foreign (F, toForeign)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import DOM.Event.Types (Event, EventTarget, FocusEvent, readFocusEvent)
import DOM.Event.Types (FocusEvent, focusEventToEvent, readFocusEvent) as T

eventToFocusEvent :: Event -> F FocusEvent
eventToFocusEvent = readFocusEvent <<< toForeign

foreign import _relatedTarget :: FocusEvent -> Nullable EventTarget

relatedTarget :: FocusEvent -> Maybe EventTarget
relatedTarget = toMaybe <$> _relatedTarget
