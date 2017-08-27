module DOM.Event.EventTarget where

import Prelude
import Control.Monad.Eff (kind Effect, Eff)
import Control.Monad.Eff.Exception (EXCEPTION)
import DOM (DOM)
import DOM.Event.Types (EventTarget, Event, EventType)

-- | A boxed function that can be used as an event listener. This is necessary
-- | due to the underlying implementation of Eff functions.
foreign import data EventListener :: # Effect -> Type

-- | Creates an EventListener from a normal PureScript Eff function.
foreign import eventListener
  :: forall eff a
   . (Event -> Eff eff a)
  -> EventListener eff

-- | Adds a listener to an event target. The boolean argument indicates whether
-- | the listener should be added for the "capture" phase.
foreign import addEventListener
  :: forall eff
   . EventType
  -> EventListener (dom :: DOM | eff)
  -> Boolean
  -> EventTarget
  -> Eff (dom :: DOM | eff) Unit

-- | Removes a listener to an event target. The boolean argument indicates
-- | whether the listener should be removed for the "capture" phase.
foreign import removeEventListener
  :: forall eff
   . EventType
  -> EventListener (dom :: DOM | eff)
  -> Boolean
  -> EventTarget
  -> Eff (dom :: DOM | eff) Unit

-- | Dispatches an event from an event target.
foreign import dispatchEvent
  :: forall eff
   . Event
  -> EventTarget
  -> Eff (dom :: DOM, err :: EXCEPTION | eff) Boolean
