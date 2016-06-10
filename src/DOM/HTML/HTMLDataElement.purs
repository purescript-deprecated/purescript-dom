module DOM.HTML.HTMLDataElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLDataElement)

foreign import value :: forall eff. HTMLDataElement -> Eff (dom :: DOM | eff) String
foreign import setValue :: forall eff. String -> HTMLDataElement -> Eff (dom :: DOM | eff) Unit
