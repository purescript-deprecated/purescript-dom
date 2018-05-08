module DOM.HTML.HTMLLinkElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLLinkElement)
import DOM.Node.Types (DOMTokenList)

foreign import disabled :: HTMLLinkElement -> Effect Boolean
foreign import setDisabled :: Boolean -> HTMLLinkElement -> Effect Unit

foreign import href :: HTMLLinkElement -> Effect String
foreign import setHref :: String -> HTMLLinkElement -> Effect Unit

foreign import crossOrigin :: HTMLLinkElement -> Effect String
foreign import setCrossOrigin :: String -> HTMLLinkElement -> Effect Unit

foreign import rel :: HTMLLinkElement -> Effect String
foreign import setRel :: String -> HTMLLinkElement -> Effect Unit

foreign import rev :: HTMLLinkElement -> Effect String
foreign import setRev :: String -> HTMLLinkElement -> Effect Unit

foreign import relList :: HTMLLinkElement -> Effect DOMTokenList

foreign import media :: HTMLLinkElement -> Effect String
foreign import setMedia :: String -> HTMLLinkElement -> Effect Unit

foreign import hreflang :: HTMLLinkElement -> Effect String
foreign import setHreflang :: String -> HTMLLinkElement -> Effect Unit

foreign import type_ :: HTMLLinkElement -> Effect String
foreign import setType :: String -> HTMLLinkElement -> Effect Unit

--   [PutForwards=value] readonly attribute DOMSettableTokenList sizes;

-- HTMLLinkElement implements LinkStyle;
