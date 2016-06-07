module DOM.Event.ErrorEvent
  ( message
  , fileName
  , lineNo
  , colNo
  ) where

import DOM.Event.Types (ErrorEvent)

foreign import message :: ErrorEvent -> String
foreign import fileName :: ErrorEvent -> String
foreign import lineNo :: ErrorEvent -> Int
foreign import colNo :: ErrorEvent -> Int
