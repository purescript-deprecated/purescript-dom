module DOM.HTML.HTMLProgressElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLProgressElement)
import DOM.Node.Types (NodeList)

foreign import value :: forall eff. HTMLProgressElement -> Eff (dom :: DOM | eff) Number
foreign import setValue :: forall eff. Number -> HTMLProgressElement -> Eff (dom :: DOM | eff) Unit

foreign import max :: forall eff. HTMLProgressElement -> Eff (dom :: DOM | eff) Number
foreign import setMax :: forall eff. Number -> HTMLProgressElement -> Eff (dom :: DOM | eff) Unit

foreign import position :: forall eff. HTMLProgressElement -> Eff (dom :: DOM | eff) Number

foreign import labels :: forall eff. HTMLProgressElement -> Eff (dom :: DOM | eff) NodeList
