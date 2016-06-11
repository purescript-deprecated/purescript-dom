module DOM.HTML.Event.Types
  ( DragEvent
  , dragEventToEvent
  , readDragEvent
  , ErrorEvent
  , errorEventToEvent
  , readErrorEvent
  , HashChangeEvent
  , hashChangeEventToEvent
  , readHashChangeEvent
  ) where

import Data.Foreign (Foreign, F, unsafeReadTagged)
import Data.Foreign.Class (class IsForeign)
import DOM.Event.Types (Event)
import Unsafe.Coerce as U

foreign import data DragEvent :: *

dragEventToEvent :: DragEvent -> Event
dragEventToEvent = U.unsafeCoerce

readDragEvent :: Foreign -> F DragEvent
readDragEvent = unsafeReadTagged "DragEvent"

instance isForeignDragEvent :: IsForeign DragEvent where
  read = readDragEvent

foreign import data ErrorEvent :: *

errorEventToEvent :: ErrorEvent -> Event
errorEventToEvent = U.unsafeCoerce

readErrorEvent :: Foreign -> F ErrorEvent
readErrorEvent = unsafeReadTagged "ErrorEvent"

instance isForeignErrorEvent :: IsForeign ErrorEvent where
  read = readErrorEvent

foreign import data HashChangeEvent :: *

hashChangeEventToEvent :: HashChangeEvent -> Event
hashChangeEventToEvent = U.unsafeCoerce

readHashChangeEvent :: Foreign -> F HashChangeEvent
readHashChangeEvent = unsafeReadTagged "HashChangeEvent"

instance isForeignHashChangeEvent :: IsForeign HashChangeEvent where
  read = readHashChangeEvent
