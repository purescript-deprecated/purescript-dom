module DOM.HTML.HTMLMetaElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLMetaElement)

foreign import name :: HTMLMetaElement -> Effect String
foreign import setName :: String -> HTMLMetaElement -> Effect Unit

foreign import httpEquiv :: HTMLMetaElement -> Effect String
foreign import setHttpEquiv :: String -> HTMLMetaElement -> Effect Unit

foreign import content :: HTMLMetaElement -> Effect String
foreign import setContent :: String -> HTMLMetaElement -> Effect Unit
