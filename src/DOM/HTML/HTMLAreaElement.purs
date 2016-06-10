module DOM.HTML.HTMLAreaElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLAreaElement)
import DOM.Node.Types (DOMTokenList)

foreign import alt :: forall eff. HTMLAreaElement -> Eff (dom :: DOM | eff) String
foreign import setAlt :: forall eff. String -> HTMLAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import coords :: forall eff. HTMLAreaElement -> Eff (dom :: DOM | eff) String
foreign import setCoords :: forall eff. String -> HTMLAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import shape :: forall eff. HTMLAreaElement -> Eff (dom :: DOM | eff) String
foreign import setShape :: forall eff. String -> HTMLAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import target :: forall eff. HTMLAreaElement -> Eff (dom :: DOM | eff) String
foreign import setTarget :: forall eff. String -> HTMLAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import download :: forall eff. HTMLAreaElement -> Eff (dom :: DOM | eff) String
foreign import setDownload :: forall eff. String -> HTMLAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import rel :: forall eff. HTMLAreaElement -> Eff (dom :: DOM | eff) String
foreign import setRel :: forall eff. String -> HTMLAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import relList :: forall eff. HTMLAreaElement -> Eff (dom :: DOM | eff) DOMTokenList

foreign import hreflang :: forall eff. HTMLAreaElement -> Eff (dom :: DOM | eff) String
foreign import setHreflang :: forall eff. String -> HTMLAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLAreaElement -> Eff (dom :: DOM | eff) String
foreign import setType :: forall eff. String -> HTMLAreaElement -> Eff (dom :: DOM | eff) Unit
