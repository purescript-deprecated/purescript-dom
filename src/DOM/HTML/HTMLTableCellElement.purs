module DOM.HTML.HTMLTableCellElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLTableCellElement)

foreign import colSpan :: forall eff. HTMLTableCellElement -> Eff (dom :: DOM | eff) Int
foreign import setColSpan :: forall eff. Int -> HTMLTableCellElement -> Eff (dom :: DOM | eff) Unit

foreign import rowSpan :: forall eff. HTMLTableCellElement -> Eff (dom :: DOM | eff) Int
foreign import setRowSpan :: forall eff. Int -> HTMLTableCellElement -> Eff (dom :: DOM | eff) Unit

--   [PutForwards=value] readonly attribute DOMSettableTokenList headers;

foreign import cellIndex :: forall eff. HTMLTableCellElement -> Eff (dom :: DOM | eff) Int
