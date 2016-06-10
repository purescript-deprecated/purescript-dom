module DOM.HTML.Document where

import Control.Monad.Eff (Eff)
import Data.Nullable (Nullable)
import DOM (DOM)
import DOM.HTML.Types (HTMLElement, HTMLDocument)

foreign import body :: forall eff. HTMLDocument -> Eff (dom :: DOM | eff) (Nullable HTMLElement)
