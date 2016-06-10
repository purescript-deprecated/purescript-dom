module DOM.HTML where

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.HTML.Types (Window)

foreign import window :: forall eff. Eff (dom :: DOM | eff) Window
