module DOM.HTML.Window where

import Control.Monad.Eff (Eff())

import DOM
import DOM.HTML.Types

foreign import document :: forall eff. Window -> Eff (dom :: DOM | eff) HTMLDocument
