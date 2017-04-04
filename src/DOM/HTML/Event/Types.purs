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
import DOM.Event.Types (Event)
import Unsafe.Coerce as U

foreign import data DragEvent :: Type

dragEventToEvent :: DragEvent -> Event
dragEventToEvent = U.unsafeCoerce

readDragEvent :: Foreign -> F DragEvent
readDragEvent = unsafeReadTagged "DragEvent"

foreign import data ErrorEvent :: Type

errorEventToEvent :: ErrorEvent -> Event
errorEventToEvent = U.unsafeCoerce

readErrorEvent :: Foreign -> F ErrorEvent
readErrorEvent = unsafeReadTagged "ErrorEvent"

foreign import data HashChangeEvent :: Type

hashChangeEventToEvent :: HashChangeEvent -> Event
hashChangeEventToEvent = U.unsafeCoerce

readHashChangeEvent :: Foreign -> F HashChangeEvent
readHashChangeEvent = unsafeReadTagged "HashChangeEvent"
