module DOM.HTML.HTMLSourceElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLSourceElement)

-- [NamedConstructor=Audio(optional DOMString src)]

foreign import src :: forall eff. HTMLSourceElement -> Eff (dom :: DOM | eff) String
foreign import setSrc :: forall eff. String -> HTMLSourceElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLSourceElement -> Eff (dom :: DOM | eff) String
foreign import setType :: forall eff. String -> HTMLSourceElement -> Eff (dom :: DOM | eff) Unit

foreign import media :: forall eff. HTMLSourceElement -> Eff (dom :: DOM | eff) String
foreign import setMedia :: forall eff. String -> HTMLSourceElement -> Eff (dom :: DOM | eff) Unit

