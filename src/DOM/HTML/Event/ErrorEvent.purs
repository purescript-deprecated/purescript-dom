module DOM.HTML.Event.ErrorEvent where

import DOM.HTML.Event.Types (ErrorEvent)

foreign import message :: ErrorEvent -> String
foreign import fileName :: ErrorEvent -> String
foreign import lineNo :: ErrorEvent -> Int
foreign import colNo :: ErrorEvent -> Int
