module DOM.HTML.HTMLMapElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLMapElement)
import DOM.Node.Types (HTMLCollection)

foreign import name :: forall eff. HTMLMapElement -> Eff (dom :: DOM | eff) String
foreign import setName :: forall eff. String -> HTMLMapElement -> Eff (dom :: DOM | eff) Unit

foreign import areas :: forall eff. HTMLMapElement -> Eff (dom :: DOM | eff) HTMLCollection

foreign import images :: forall eff. HTMLMapElement -> Eff (dom :: DOM | eff) HTMLCollection
