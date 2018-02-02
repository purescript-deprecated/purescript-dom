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

import Control.Monad.Effect (Effect)

import Data.ArrayBuffer.Types (ArrayBuffer, ArrayView)
import Data.Foreign (Foreign, toForeign)
import Data.Maybe (fromJust)

import DOM.File.Types (Blob)
import DOM.Websocket.BinaryType (BinaryType(..), fromEnumBinaryType, printBinaryType, toEnumBinaryType)
import DOM.Websocket.Event.Types (CloseEvent, MessageEvent, readCloseEvent, readMessageEvent)
import DOM.Websocket.ReadyState (ReadyState(..), fromEnumReadyState, toEnumReadyState)
import DOM.Websocket.Types (Protocol(..), URL(..), WebSocket, readWebSocket, socketToEventTarget)

import Partial.Unsafe (unsafePartial)

foreign import create :: URL -> Array Protocol -> Effect WebSocket

foreign import url :: WebSocket -> Effect String

foreign import readyStateImpl :: WebSocket -> Effect Int

readyState :: WebSocket -> Effect ReadyState
readyState ws = do
  rs <- readyStateImpl ws
  pure $ unsafePartial $ fromJust $ toEnumReadyState rs

foreign import bufferedAmount :: WebSocket -> Effect Number

foreign import extensions :: WebSocket -> Effect String
foreign import protocol :: WebSocket -> Effect String

foreign import close :: WebSocket -> Effect Unit

foreign import getBinaryTypeImpl :: WebSocket -> Effect String
foreign import setBinaryTypeImpl :: WebSocket -> String -> Effect Unit

getBinaryType :: WebSocket -> Effect BinaryType
getBinaryType ws = unsafePartial do
  getBinaryTypeImpl ws <#> case _ of
    "blob" -> Blob
    "arraybuffer" -> ArrayBuffer

setBinaryType :: WebSocket -> BinaryType -> Effect Unit
setBinaryType ws = setBinaryTypeImpl ws <<< printBinaryType

foreign import sendImpl :: WebSocket -> Foreign -> Effect Unit

sendString :: WebSocket -> String -> Effect Unit
sendString ws = sendImpl ws <<< toForeign

sendBlob :: WebSocket -> Blob -> Effect Unit
sendBlob ws = sendImpl ws <<< toForeign

sendArrayBuffer :: WebSocket -> ArrayBuffer -> Effect Unit
sendArrayBuffer ws = sendImpl ws <<< toForeign

sendArrayBufferView :: forall t. WebSocket -> ArrayView t -> Effect Unit
sendArrayBufferView ws = sendImpl ws <<< toForeign
