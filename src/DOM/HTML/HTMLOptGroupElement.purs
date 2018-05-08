module DOM.HTML.HTMLOptGroupElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLOptGroupElement)

foreign import disabled :: HTMLOptGroupElement -> Effect Boolean
foreign import setDisabled :: Boolean -> HTMLOptGroupElement -> Effect Unit

foreign import label :: HTMLOptGroupElement -> Effect String
foreign import setLabel :: String -> HTMLOptGroupElement -> Effect Unit
