module DOM.HTML.HTMLProgressElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLProgressElement)
import DOM.Node.Types (NodeList)

foreign import value :: HTMLProgressElement -> Effect Number
foreign import setValue :: Number -> HTMLProgressElement -> Effect Unit

foreign import max :: HTMLProgressElement -> Effect Number
foreign import setMax :: Number -> HTMLProgressElement -> Effect Unit

foreign import position :: HTMLProgressElement -> Effect Number

foreign import labels :: HTMLProgressElement -> Effect NodeList
