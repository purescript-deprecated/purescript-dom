module DOM.HTML.HTMLTableHeaderCellElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLTableHeaderCellElement)

foreign import scope :: HTMLTableHeaderCellElement -> Effect String
foreign import setScope :: String -> HTMLTableHeaderCellElement -> Effect Unit

foreign import abbr :: HTMLTableHeaderCellElement -> Effect String
foreign import setAbbr :: String -> HTMLTableHeaderCellElement -> Effect Unit
