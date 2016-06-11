module DOM.Websocket.Event.Types where

import Data.Foreign (Foreign, F, unsafeReadTagged)
import Data.Foreign.Class (class IsForeign)
import DOM.Event.Types (Event)
import Unsafe.Coerce as U

foreign import data CloseEvent :: *

closeEventToEvent :: CloseEvent -> Event
closeEventToEvent = U.unsafeCoerce

readCloseEvent :: Foreign -> F CloseEvent
readCloseEvent = unsafeReadTagged "CloseEvent"

instance isForeignCloseEvent :: IsForeign CloseEvent where
  read = readCloseEvent
