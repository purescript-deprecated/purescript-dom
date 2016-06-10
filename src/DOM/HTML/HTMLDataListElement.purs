module DOM.HTML.HTMLDataListElement where

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLDataListElement)
import DOM.Node.Types (HTMLCollection)

foreign import options :: forall eff. HTMLDataListElement -> Eff (dom :: DOM | eff) HTMLCollection
