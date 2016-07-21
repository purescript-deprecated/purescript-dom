module DOM.Event.CompositionEvent (
    module T,
    eventToCompositionEvent,
    data_
    ) where

import Data.Maybe (Maybe(..))
import DOM.Event.Types (CompositionEvent, Event)
import DOM.Event.Types (CompositionEvent, compositionEventToEvent, readCompositionEvent) as T

eventToCompositionEvent :: Event -> Maybe CompositionEvent
eventToCompositionEvent = _eventToCompositionEvent Just Nothing

foreign import _eventToCompositionEvent
  :: forall a
   . (a -> Maybe a)
  -> Maybe a
  -> Event
  -> Maybe CompositionEvent

foreign import data_ :: CompositionEvent -> String
