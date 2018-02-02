module DOM.HTML.HTMLMeterElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLMeterElement)
import DOM.Node.Types (NodeList)

foreign import value :: HTMLMeterElement -> Effect Number
foreign import setValue :: Number -> HTMLMeterElement -> Effect Unit

foreign import min :: HTMLMeterElement -> Effect Number
foreign import setMin :: Number -> HTMLMeterElement -> Effect Unit

foreign import max :: HTMLMeterElement -> Effect Number
foreign import setMax :: Number -> HTMLMeterElement -> Effect Unit

foreign import low :: HTMLMeterElement -> Effect Number
foreign import setLow :: Number -> HTMLMeterElement -> Effect Unit

foreign import high :: HTMLMeterElement -> Effect Number
foreign import setHigh :: Number -> HTMLMeterElement -> Effect Unit

foreign import optimum :: HTMLMeterElement -> Effect Number
foreign import setOptimum :: Number -> HTMLMeterElement -> Effect Unit

foreign import labels :: HTMLMeterElement -> Effect NodeList
