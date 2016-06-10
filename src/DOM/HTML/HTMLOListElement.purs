module DOM.HTML.HTMLOListElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLOListElement)

foreign import reversed :: forall eff. HTMLOListElement -> Eff (dom :: DOM | eff) Boolean
foreign import setReversed :: forall eff. Boolean -> HTMLOListElement -> Eff (dom :: DOM | eff) Unit

foreign import start :: forall eff. HTMLOListElement -> Eff (dom :: DOM | eff) Int
foreign import setStart :: forall eff. Int -> HTMLOListElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLOListElement -> Eff (dom :: DOM | eff) String
foreign import setType :: forall eff. String -> HTMLOListElement -> Eff (dom :: DOM | eff) Unit
