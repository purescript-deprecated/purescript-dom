module DOM.Websocket.Event.CloseEvent where

import DOM.Websocket.Event.Types (CloseEvent)

foreign import code :: CloseEvent -> Int
foreign import reason :: CloseEvent -> String
foreign import wasClean :: CloseEvent -> Boolean
