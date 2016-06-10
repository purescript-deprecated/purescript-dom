module DOM.HTML.HTMLMetaElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLMetaElement)

foreign import name :: forall eff. HTMLMetaElement -> Eff (dom :: DOM | eff) String
foreign import setName :: forall eff. String -> HTMLMetaElement -> Eff (dom :: DOM | eff) Unit

foreign import httpEquiv :: forall eff. HTMLMetaElement -> Eff (dom :: DOM | eff) String
foreign import setHttpEquiv :: forall eff. String -> HTMLMetaElement -> Eff (dom :: DOM | eff) Unit

foreign import content :: forall eff. HTMLMetaElement -> Eff (dom :: DOM | eff) String
foreign import setContent :: forall eff. String -> HTMLMetaElement -> Eff (dom :: DOM | eff) Unit
