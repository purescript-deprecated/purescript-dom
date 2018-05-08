module DOM.HTML where

import Control.Monad.Effect (Effect)
import DOM.HTML.Types (Window)

foreign import window :: Effect Window
