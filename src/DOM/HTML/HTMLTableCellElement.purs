module DOM.HTML.HTMLTableCellElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLTableCellElement)

foreign import colSpan :: HTMLTableCellElement -> Effect Int
foreign import setColSpan :: Int -> HTMLTableCellElement -> Effect Unit

foreign import rowSpan :: HTMLTableCellElement -> Effect Int
foreign import setRowSpan :: Int -> HTMLTableCellElement -> Effect Unit

--   [PutForwards=value] readonly attribute DOMSettableTokenList headers;

foreign import cellIndex :: HTMLTableCellElement -> Effect Int
