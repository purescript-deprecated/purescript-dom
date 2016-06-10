module DOM.HTML.HTMLTableHeaderCellElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLTableHeaderCellElement)

foreign import scope :: forall eff. HTMLTableHeaderCellElement -> Eff (dom :: DOM | eff) String
foreign import setScope :: forall eff. String -> HTMLTableHeaderCellElement -> Eff (dom :: DOM | eff) Unit

foreign import abbr :: forall eff. HTMLTableHeaderCellElement -> Eff (dom :: DOM | eff) String
foreign import setAbbr :: forall eff. String -> HTMLTableHeaderCellElement -> Eff (dom :: DOM | eff) Unit
