module DOM.Event.EventTarget where

import Prelude
import Control.Monad.Effect (Effect)
import DOM.Event.Types (EventTarget, Event, EventType)

-- | A boxed function that can be used as an event listener. This is necessary
-- | due to the underlying implementation of Effect functions.
foreign import data EventListener :: Type

-- | Creates an EventListener from a normal PureScript Effect function.
foreign import eventListener
  :: forall a
   . (Event -> Effect a)
  -> EventListener

-- | Adds a listener to an event target. The boolean argument indicates whether
-- | the listener should be added for the "capture" phase.
foreign import addEventListener
  :: EventType
  -> EventListener
  -> Boolean
  -> EventTarget
  -> Effect Unit

-- | Removes a listener to an event target. The boolean argument indicates
-- | whether the listener should be removed for the "capture" phase.
foreign import removeEventListener
  :: EventType
  -> EventListener
  -> Boolean
  -> EventTarget
  -> Effect Unit

-- | Dispatches an event from an event target.
foreign import dispatchEvent
  :: Event
  -> EventTarget
  -> Effect Boolean
