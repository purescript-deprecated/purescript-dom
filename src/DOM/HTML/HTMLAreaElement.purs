module DOM.HTML.HTMLAreaElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLAreaElement)
import DOM.Node.Types (DOMTokenList)

foreign import alt :: HTMLAreaElement -> Effect String
foreign import setAlt :: String -> HTMLAreaElement -> Effect Unit

foreign import coords :: HTMLAreaElement -> Effect String
foreign import setCoords :: String -> HTMLAreaElement -> Effect Unit

foreign import shape :: HTMLAreaElement -> Effect String
foreign import setShape :: String -> HTMLAreaElement -> Effect Unit

foreign import target :: HTMLAreaElement -> Effect String
foreign import setTarget :: String -> HTMLAreaElement -> Effect Unit

foreign import download :: HTMLAreaElement -> Effect String
foreign import setDownload :: String -> HTMLAreaElement -> Effect Unit

foreign import rel :: HTMLAreaElement -> Effect String
foreign import setRel :: String -> HTMLAreaElement -> Effect Unit

foreign import relList :: HTMLAreaElement -> Effect DOMTokenList

foreign import hreflang :: HTMLAreaElement -> Effect String
foreign import setHreflang :: String -> HTMLAreaElement -> Effect Unit

foreign import type_ :: HTMLAreaElement -> Effect String
foreign import setType :: String -> HTMLAreaElement -> Effect Unit
