module DOM.Event.CloseEvent
  ( code
  , reason
  , wasClean
  ) where

import Prelude

import Control.Monad.Eff (Eff())

import Data.Enum (toEnum)
import qualified Data.Maybe.Unsafe as U

import DOM
import DOM.Event.EventPhase
import DOM.Event.Types
import DOM.Node.Types

foreign import code :: CloseEvent -> Int
foreign import reason :: CloseEvent -> String
foreign import wasClean :: CloseEvent -> Boolean
