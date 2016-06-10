module DOM.HTML.HTMLOptGroupElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLOptGroupElement)

foreign import disabled :: forall eff. HTMLOptGroupElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDisabled :: forall eff. Boolean -> HTMLOptGroupElement -> Eff (dom :: DOM | eff) Unit

foreign import label :: forall eff. HTMLOptGroupElement -> Eff (dom :: DOM | eff) String
foreign import setLabel :: forall eff. String -> HTMLOptGroupElement -> Eff (dom :: DOM | eff) Unit
