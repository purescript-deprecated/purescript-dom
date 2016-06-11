module DOM.CSS.Event.Types
  ( TransitionEvent
  , transitionEventToEvent
  , readTransitionEvent
  ) where

import Data.Foreign (Foreign, F, unsafeReadTagged)
import Data.Foreign.Class (class IsForeign)
import DOM.Event.Types (Event)
import Unsafe.Coerce as U

foreign import data TransitionEvent :: *

transitionEventToEvent :: TransitionEvent -> Event
transitionEventToEvent = U.unsafeCoerce

readTransitionEvent :: Foreign -> F TransitionEvent
readTransitionEvent = unsafeReadTagged "TransitionEvent"

instance isForeignTransitionEvent :: IsForeign TransitionEvent where
  read = readTransitionEvent
