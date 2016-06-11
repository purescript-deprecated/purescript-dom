module DOM.Event.Event
  ( module DOM.Event.Event
  , module T
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Enum (toEnum)
import Data.Maybe (fromJust)
import DOM (DOM)
import DOM.Event.EventPhase (EventPhase)
import DOM.Event.Types (Event, EventType)
import DOM.Event.Types (Event) as T
import DOM.Node.Types (Node)

-- | The event type.
foreign import type_ :: Event -> EventType

-- | The element that was the source of the event.
foreign import target :: Event -> Node

-- | The element that the event listener was added to.
foreign import currentTarget :: Event -> Node

-- | Indicates which phase of the event flow that is currently being processed
-- | for the event.
eventPhase :: Partial => Event -> EventPhase
eventPhase = fromJust <<< toEnum <<< eventPhaseIndex

-- | The integer value for the current event phase.
foreign import eventPhaseIndex :: Event -> Int

-- | Prevents the event from bubbling up to futher event listeners. Other event
-- | listeners on the current target will still fire.
foreign import stopPropagation
  :: forall eff
   . Event
  -> Eff (dom :: DOM | eff) Unit

-- | Prevents all other listeners for the event from being called. This includes
-- | event listeners added to the current target after the current listener.
foreign import stopImmediatePropagation
  :: forall eff
   . Event
  -> Eff (dom :: DOM | eff) Unit

-- | Indicates whether the event will bubble up through the DOM or not.
foreign import bubbles :: Event -> Boolean

-- | Indicates whether the event can be cancelled.
foreign import cancelable :: Event -> Boolean

-- | Cancels the event if it can be cancelled.
foreign import preventDefault
  :: forall eff
   . Event
  -> Eff (dom :: DOM | eff) Unit

-- | Indicates whether `preventDefault` was called on the event.
foreign import defaultPrevented :: Event -> Boolean

-- | The time in milliseconds between 01/01/1970 and when the event was
-- | dispatched.
foreign import timeStamp :: Event -> Number
