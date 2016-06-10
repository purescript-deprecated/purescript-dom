module DOM.HTML.HTMLLinkElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLLinkElement)
import DOM.Node.Types (DOMTokenList)

foreign import disabled :: forall eff. HTMLLinkElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDisabled :: forall eff. Boolean -> HTMLLinkElement -> Eff (dom :: DOM | eff) Unit

foreign import href :: forall eff. HTMLLinkElement -> Eff (dom :: DOM | eff) String
foreign import setHref :: forall eff. String -> HTMLLinkElement -> Eff (dom :: DOM | eff) Unit

foreign import crossOrigin :: forall eff. HTMLLinkElement -> Eff (dom :: DOM | eff) String
foreign import setCrossOrigin :: forall eff. String -> HTMLLinkElement -> Eff (dom :: DOM | eff) Unit

foreign import rel :: forall eff. HTMLLinkElement -> Eff (dom :: DOM | eff) String
foreign import setRel :: forall eff. String -> HTMLLinkElement -> Eff (dom :: DOM | eff) Unit

foreign import rev :: forall eff. HTMLLinkElement -> Eff (dom :: DOM | eff) String
foreign import setRev :: forall eff. String -> HTMLLinkElement -> Eff (dom :: DOM | eff) Unit

foreign import relList :: forall eff. HTMLLinkElement -> Eff (dom :: DOM | eff) DOMTokenList

foreign import media :: forall eff. HTMLLinkElement -> Eff (dom :: DOM | eff) String
foreign import setMedia :: forall eff. String -> HTMLLinkElement -> Eff (dom :: DOM | eff) Unit

foreign import hreflang :: forall eff. HTMLLinkElement -> Eff (dom :: DOM | eff) String
foreign import setHreflang :: forall eff. String -> HTMLLinkElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLLinkElement -> Eff (dom :: DOM | eff) String
foreign import setType :: forall eff. String -> HTMLLinkElement -> Eff (dom :: DOM | eff) Unit

--   [PutForwards=value] readonly attribute DOMSettableTokenList sizes;

-- HTMLLinkElement implements LinkStyle;
