module DOM.Websocket.Types
  ( module DOM.Websocket.Types
  , module DOM.HTML.History
  ) where

import Prelude

import Data.Foreign (F, Foreign, unsafeReadTagged)
import Data.Newtype (class Newtype)

import DOM.Event.Types (EventTarget)
import DOM.HTML.History (URL(..))

import Unsafe.Coerce (unsafeCoerce)

foreign import data WebSocket :: Type

readWebSocket :: Foreign -> F WebSocket
readWebSocket = unsafeReadTagged "WebSocket"

socketToEventTarget :: WebSocket -> EventTarget
socketToEventTarget = unsafeCoerce

newtype Protocol = Protocol String

derive newtype instance eqProtocol :: Eq Protocol
derive newtype instance ordProtocol :: Ord Protocol
derive instance newtypeProtocol :: Newtype Protocol _
