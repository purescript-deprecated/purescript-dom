module DOM.HTML.HTMLBaseElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLBaseElement)

foreign import href :: forall eff. HTMLBaseElement -> Eff (dom :: DOM | eff) String
foreign import setHref :: forall eff. String -> HTMLBaseElement -> Eff (dom :: DOM | eff) Unit

foreign import target :: forall eff. HTMLBaseElement -> Eff (dom :: DOM | eff) String
foreign import setTarget :: forall eff. String -> HTMLBaseElement -> Eff (dom :: DOM | eff) Unit
