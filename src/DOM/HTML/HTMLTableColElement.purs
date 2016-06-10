module DOM.HTML.HTMLTableColElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLTableColElement)

foreign import span :: forall eff. HTMLTableColElement -> Eff (dom :: DOM | eff) Int
foreign import setSpan :: forall eff. Int -> HTMLTableColElement -> Eff (dom :: DOM | eff) Unit
