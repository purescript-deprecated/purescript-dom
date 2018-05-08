module DOM.HTML.HTMLTableSectionElement where

import Prelude (Unit, negate)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLTableSectionElement, HTMLElement)
import DOM.Node.Types (HTMLCollection)

foreign import rows :: HTMLTableSectionElement -> Effect HTMLCollection

insertRow :: HTMLTableSectionElement -> Effect HTMLElement
insertRow = insertRow' (-1)

foreign import insertRow' :: Int -> HTMLTableSectionElement -> Effect HTMLElement

foreign import deleteRow :: Int -> HTMLTableSectionElement -> Effect Unit
