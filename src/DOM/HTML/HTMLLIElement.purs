module DOM.HTML.HTMLLIElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLLIElement)

foreign import value :: forall eff. HTMLLIElement -> Eff (dom :: DOM | eff) Int
foreign import setValue :: forall eff. Int -> HTMLLIElement -> Eff (dom :: DOM | eff) Unit
