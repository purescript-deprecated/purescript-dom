module DOM.HTML.HTMLTableRowElement where

import Prelude (Unit, negate)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLTableRowElement, HTMLElement)
import DOM.Node.Types (HTMLCollection)

foreign import rowIndex :: HTMLTableRowElement -> Effect Int

foreign import sectionRowIndex :: HTMLTableRowElement -> Effect Int

foreign import cells :: HTMLTableRowElement -> Effect HTMLCollection

insertCell :: HTMLTableRowElement -> Effect HTMLElement
insertCell = insertCell' (-1)

foreign import insertCell' :: Int -> HTMLTableRowElement -> Effect HTMLElement

foreign import deleteCell :: Int -> HTMLTableRowElement -> Effect Unit
