module DOM.HTML.Navigator where

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.HTML.Types (Navigator)

foreign import platform :: forall eff. Navigator -> Eff (dom :: DOM | eff) String
