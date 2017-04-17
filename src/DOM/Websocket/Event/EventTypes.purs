module DOM.Websocket.Event.EventTypes where

import DOM.Event.Types (EventType(..))

onOpen :: EventType
onOpen = EventType "open"

onMessage :: EventType
onMessage = EventType "message"

onError :: EventType
onError = EventType "error"

onClose :: EventType
onClose = EventType "close"
