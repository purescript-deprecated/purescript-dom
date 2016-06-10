module DOM.HTML.HTMLTimeElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLTimeElement)

foreign import dateTime :: forall eff. HTMLTimeElement -> Eff (dom :: DOM | eff) String
foreign import setDateTime :: forall eff. String -> HTMLTimeElement -> Eff (dom :: DOM | eff) Unit
