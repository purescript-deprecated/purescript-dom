module DOM.HTML where

import Control.Monad.Eff (Eff())

import DOM
import DOM.HTML.Types

foreign import window :: forall eff. Eff (dom :: DOM | eff) Window
