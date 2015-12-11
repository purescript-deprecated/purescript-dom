module DOM.HTML.Navigator where

import Control.Monad.Eff (Eff())

import DOM
import DOM.HTML.Types

foreign import platform :: forall eff. Navigator -> Eff (dom :: DOM | eff) String
