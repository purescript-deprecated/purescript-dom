module DOM.HTML.HTMLTemplateElement where

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLTemplateElement)
import DOM.Node.Types (DocumentFragment)

foreign import content :: forall eff. HTMLTemplateElement -> Eff (dom :: DOM | eff) DocumentFragment
