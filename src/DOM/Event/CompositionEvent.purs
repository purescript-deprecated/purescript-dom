module DOM.Event.CompositionEvent
  ( module T
  , eventToCompositionEvent
  , data_
  ) where

import Prelude
import Data.Foreign (F, toForeign)
import DOM.Event.Types (CompositionEvent, Event, readCompositionEvent)
import DOM.Event.Types (CompositionEvent, compositionEventToEvent, readCompositionEvent) as T

eventToCompositionEvent :: Event -> F CompositionEvent
eventToCompositionEvent = readCompositionEvent <<< toForeign

foreign import data_ :: CompositionEvent -> String
