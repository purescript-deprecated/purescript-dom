module DOM.HTML.HTMLBaseElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLBaseElement)

foreign import href :: HTMLBaseElement -> Effect String
foreign import setHref :: String -> HTMLBaseElement -> Effect Unit

foreign import target :: HTMLBaseElement -> Effect String
foreign import setTarget :: String -> HTMLBaseElement -> Effect Unit
