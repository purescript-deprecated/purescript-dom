module DOM.Websocket.Event.Types where

import Data.Foreign (Foreign, F, unsafeReadTagged)
import DOM.Event.Types (Event)
import Unsafe.Coerce as U

foreign import data CloseEvent :: Type

closeEventToEvent :: CloseEvent -> Event
closeEventToEvent = U.unsafeCoerce

readCloseEvent :: Foreign -> F CloseEvent
readCloseEvent = unsafeReadTagged "CloseEvent"

foreign import data MessageEvent :: Type

messageEventToEvent :: MessageEvent -> Event
messageEventToEvent = U.unsafeCoerce

readMessageEvent :: Foreign -> F MessageEvent
readMessageEvent = unsafeReadTagged "MessageEvent"
