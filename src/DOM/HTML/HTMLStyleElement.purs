module DOM.HTML.HTMLStyleElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLStyleElement)

foreign import disabled :: forall eff. HTMLStyleElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDisabled :: forall eff. Boolean -> HTMLStyleElement -> Eff (dom :: DOM | eff) Unit

foreign import media :: forall eff. HTMLStyleElement -> Eff (dom :: DOM | eff) String
foreign import setMedia :: forall eff. String -> HTMLStyleElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLStyleElement -> Eff (dom :: DOM | eff) String
foreign import setType :: forall eff. String -> HTMLStyleElement -> Eff (dom :: DOM | eff) Unit
