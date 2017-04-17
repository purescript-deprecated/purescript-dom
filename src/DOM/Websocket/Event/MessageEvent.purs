module DOM.Websocket.Event.MessageEvent where

import Data.Foreign (Foreign)
import DOM.Websocket.Event.Types (MessageEvent)

foreign import data_ :: MessageEvent -> Foreign
foreign import origin :: MessageEvent -> String
foreign import lastEventId :: MessageEvent -> String
