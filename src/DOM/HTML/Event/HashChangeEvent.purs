module DOM.HTML.Event.HashChangeEvent where

import DOM.HTML.Event.Types (HashChangeEvent)

foreign import oldURL :: HashChangeEvent -> String
foreign import newURL :: HashChangeEvent -> String
