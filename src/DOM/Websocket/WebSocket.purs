module DOM.Websocket.WebSocket
  ( create
  , url
  , readyState
  , bufferedAmount
  , extensions
  , protocol
  , close
  , getBinaryType
  , setBinaryType
  , sendString
  , sendBlob
  , sendArrayBuffer
  , sendArrayBufferView
  , module DOM.Websocket.BinaryType
  , module DOM.Websocket.Event.Types
  , module DOM.Websocket.ReadyState
  , module DOM.Websocket.Types
  ) where

import Prelude

import Control.Monad.Eff (Eff)

import Data.ArrayBuffer.Types (ArrayBuffer, ArrayView)
import Data.Foreign (Foreign, toForeign)
import Data.Maybe (fromJust)

import DOM (DOM)
import DOM.File.Types (Blob)
import DOM.Websocket.BinaryType (BinaryType(..), fromEnumBinaryType, printBinaryType, toEnumBinaryType)
import DOM.Websocket.Event.Types (CloseEvent, MessageEvent, readCloseEvent, readMessageEvent)
import DOM.Websocket.ReadyState (ReadyState(..), fromEnumReadyState, toEnumReadyState)
import DOM.Websocket.Types (Protocol(..), URL(..), WebSocket, readWebSocket, socketToEventTarget)

import Partial.Unsafe (unsafePartial)

foreign import create :: forall eff. URL -> Array Protocol -> Eff (dom :: DOM | eff) WebSocket

foreign import url :: forall eff. WebSocket -> Eff (dom :: DOM | eff) String

foreign import readyStateImpl :: forall eff. WebSocket -> Eff (dom :: DOM | eff) Int

readyState :: forall eff. WebSocket -> Eff (dom :: DOM | eff) ReadyState
readyState ws = do
  rs <- readyStateImpl ws
  pure $ unsafePartial $ fromJust $ toEnumReadyState rs

foreign import bufferedAmount :: forall eff. WebSocket -> Eff (dom :: DOM | eff) Number

foreign import extensions :: forall eff. WebSocket -> Eff (dom :: DOM | eff) String
foreign import protocol :: forall eff. WebSocket -> Eff (dom :: DOM | eff) String

foreign import close :: forall eff. WebSocket -> Eff (dom :: DOM | eff) Unit

foreign import getBinaryTypeImpl :: forall eff. WebSocket -> Eff (dom :: DOM | eff) String
foreign import setBinaryTypeImpl :: forall eff. WebSocket -> String -> Eff (dom :: DOM | eff) Unit

getBinaryType :: forall eff. WebSocket -> Eff (dom :: DOM | eff) BinaryType
getBinaryType ws = unsafePartial do
  getBinaryTypeImpl ws <#> case _ of
    "blob" -> Blob
    "arraybuffer" -> ArrayBuffer

setBinaryType :: forall eff. WebSocket -> BinaryType -> Eff (dom :: DOM | eff) Unit
setBinaryType ws = setBinaryTypeImpl ws <<< printBinaryType

foreign import sendImpl :: forall eff. WebSocket -> Foreign -> Eff (dom :: DOM | eff) Unit

sendString :: forall eff. WebSocket -> String -> Eff (dom :: DOM | eff) Unit
sendString ws = sendImpl ws <<< toForeign

sendBlob :: forall eff. WebSocket -> Blob -> Eff (dom :: DOM | eff) Unit
sendBlob ws = sendImpl ws <<< toForeign

sendArrayBuffer :: forall eff. WebSocket -> ArrayBuffer -> Eff (dom :: DOM | eff) Unit
sendArrayBuffer ws = sendImpl ws <<< toForeign

sendArrayBufferView :: forall t eff. WebSocket -> ArrayView t -> Eff (dom :: DOM | eff) Unit
sendArrayBufferView ws = sendImpl ws <<< toForeign
