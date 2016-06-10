module DOM.HTML.HTMLParamElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLParamElement)

foreign import name :: forall eff. HTMLParamElement -> Eff (dom :: DOM | eff) String
foreign import setName :: forall eff. String -> HTMLParamElement -> Eff (dom :: DOM | eff) Unit

foreign import value :: forall eff. HTMLParamElement -> Eff (dom :: DOM | eff) String
foreign import setValue :: forall eff. String -> HTMLParamElement -> Eff (dom :: DOM | eff) Unit
