module DOM.HTML.HTMLModElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLModElement)

foreign import cite :: forall eff. HTMLModElement -> Eff (dom :: DOM | eff) String
foreign import setCite :: forall eff. String -> HTMLModElement -> Eff (dom :: DOM | eff) Unit

foreign import dateTime :: forall eff. HTMLModElement -> Eff (dom :: DOM | eff) String
foreign import setDateTime :: forall eff. String -> HTMLModElement -> Eff (dom :: DOM | eff) Unit
