module DOM.Event.CloseEvent
  ( code
  , reason
  , wasClean
  ) where

import Data.Maybe.Unsafe as U
import DOM.Event.Types (CloseEvent)


foreign import code :: CloseEvent -> Int
foreign import reason :: CloseEvent -> String
foreign import wasClean :: CloseEvent -> Boolean
