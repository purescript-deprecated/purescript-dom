module DOM.HTML.HTMLQuoteElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLQuoteElement)

foreign import cite :: forall eff. HTMLQuoteElement -> Eff (dom :: DOM | eff) Boolean
foreign import setCite :: forall eff. Boolean -> HTMLQuoteElement -> Eff (dom :: DOM | eff) Unit
