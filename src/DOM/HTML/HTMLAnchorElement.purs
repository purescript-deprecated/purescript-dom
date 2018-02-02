module DOM.HTML.HTMLAnchorElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLAnchorElement)
import DOM.Node.Types (DOMTokenList)

foreign import target :: HTMLAnchorElement -> Effect String
foreign import setTarget :: String -> HTMLAnchorElement -> Effect Unit

foreign import download :: HTMLAnchorElement -> Effect String
foreign import setDownload :: String -> HTMLAnchorElement -> Effect Unit

foreign import rel :: HTMLAnchorElement -> Effect String
foreign import setRel :: String -> HTMLAnchorElement -> Effect Unit

foreign import rev :: HTMLAnchorElement -> Effect String
foreign import setRev :: String -> HTMLAnchorElement -> Effect Unit

foreign import relList :: HTMLAnchorElement -> Effect DOMTokenList

foreign import hreflang :: HTMLAnchorElement -> Effect String
foreign import setHreflang :: String -> HTMLAnchorElement -> Effect Unit

foreign import type_ :: HTMLAnchorElement -> Effect String
foreign import setType :: String -> HTMLAnchorElement -> Effect Unit

foreign import text :: HTMLAnchorElement -> Effect String
foreign import setText :: String -> HTMLAnchorElement -> Effect Unit
