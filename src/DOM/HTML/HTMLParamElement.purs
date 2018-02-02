module DOM.HTML.HTMLParamElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLParamElement)

foreign import name :: HTMLParamElement -> Effect String
foreign import setName :: String -> HTMLParamElement -> Effect Unit

foreign import value :: HTMLParamElement -> Effect String
foreign import setValue :: String -> HTMLParamElement -> Effect Unit
