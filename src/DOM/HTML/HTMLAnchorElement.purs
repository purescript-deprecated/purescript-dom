module DOM.HTML.HTMLAnchorElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLAnchorElement)
import DOM.Node.Types (DOMTokenList)

foreign import target :: forall eff. HTMLAnchorElement -> Eff (dom :: DOM | eff) String
foreign import setTarget :: forall eff. String -> HTMLAnchorElement -> Eff (dom :: DOM | eff) Unit

foreign import download :: forall eff. HTMLAnchorElement -> Eff (dom :: DOM | eff) String
foreign import setDownload :: forall eff. String -> HTMLAnchorElement -> Eff (dom :: DOM | eff) Unit

foreign import rel :: forall eff. HTMLAnchorElement -> Eff (dom :: DOM | eff) String
foreign import setRel :: forall eff. String -> HTMLAnchorElement -> Eff (dom :: DOM | eff) Unit

foreign import rev :: forall eff. HTMLAnchorElement -> Eff (dom :: DOM | eff) String
foreign import setRev :: forall eff. String -> HTMLAnchorElement -> Eff (dom :: DOM | eff) Unit

foreign import relList :: forall eff. HTMLAnchorElement -> Eff (dom :: DOM | eff) DOMTokenList

foreign import hreflang :: forall eff. HTMLAnchorElement -> Eff (dom :: DOM | eff) String
foreign import setHreflang :: forall eff. String -> HTMLAnchorElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLAnchorElement -> Eff (dom :: DOM | eff) String
foreign import setType :: forall eff. String -> HTMLAnchorElement -> Eff (dom :: DOM | eff) Unit

foreign import text :: forall eff. HTMLAnchorElement -> Eff (dom :: DOM | eff) String
foreign import setText :: forall eff. String -> HTMLAnchorElement -> Eff (dom :: DOM | eff) Unit
