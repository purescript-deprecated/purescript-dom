module DOM.HTML.Document where

import Control.Monad.Eff (Eff())

import Data.Nullable (Nullable())

import DOM
import DOM.HTML.Types

foreign import body :: forall eff. HTMLDocument -> Eff (dom :: DOM | eff) (Nullable HTMLElement)
