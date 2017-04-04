module DOM.CSS.Event.Types
  ( TransitionEvent
  , transitionEventToEvent
  , readTransitionEvent
  ) where

import Data.Foreign (Foreign, F, unsafeReadTagged)
import DOM.Event.Types (Event)
import Unsafe.Coerce as U

foreign import data TransitionEvent :: Type

transitionEventToEvent :: TransitionEvent -> Event
transitionEventToEvent = U.unsafeCoerce

readTransitionEvent :: Foreign -> F TransitionEvent
readTransitionEvent = unsafeReadTagged "TransitionEvent"
