module DOM.HTML.HTMLTitleElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLTitleElement)

foreign import text :: forall eff. HTMLTitleElement -> Eff (dom :: DOM | eff) String
foreign import setText :: forall eff. String -> HTMLTitleElement -> Eff (dom :: DOM | eff) Unit
