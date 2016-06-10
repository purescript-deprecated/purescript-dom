module DOM.HTML.HTMLMeterElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLMeterElement)
import DOM.Node.Types (NodeList)

foreign import value :: forall eff. HTMLMeterElement -> Eff (dom :: DOM | eff) Number
foreign import setValue :: forall eff. Number -> HTMLMeterElement -> Eff (dom :: DOM | eff) Unit

foreign import min :: forall eff. HTMLMeterElement -> Eff (dom :: DOM | eff) Number
foreign import setMin :: forall eff. Number -> HTMLMeterElement -> Eff (dom :: DOM | eff) Unit

foreign import max :: forall eff. HTMLMeterElement -> Eff (dom :: DOM | eff) Number
foreign import setMax :: forall eff. Number -> HTMLMeterElement -> Eff (dom :: DOM | eff) Unit

foreign import low :: forall eff. HTMLMeterElement -> Eff (dom :: DOM | eff) Number
foreign import setLow :: forall eff. Number -> HTMLMeterElement -> Eff (dom :: DOM | eff) Unit

foreign import high :: forall eff. HTMLMeterElement -> Eff (dom :: DOM | eff) Number
foreign import setHigh :: forall eff. Number -> HTMLMeterElement -> Eff (dom :: DOM | eff) Unit

foreign import optimum :: forall eff. HTMLMeterElement -> Eff (dom :: DOM | eff) Number
foreign import setOptimum :: forall eff. Number -> HTMLMeterElement -> Eff (dom :: DOM | eff) Unit

foreign import labels :: forall eff. HTMLMeterElement -> Eff (dom :: DOM | eff) NodeList
