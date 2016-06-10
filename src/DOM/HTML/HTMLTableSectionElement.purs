module DOM.HTML.HTMLTableSectionElement where

import Prelude (Unit, negate)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLTableSectionElement, HTMLElement)
import DOM.Node.Types (HTMLCollection)

foreign import rows :: forall eff. HTMLTableSectionElement -> Eff (dom :: DOM | eff) HTMLCollection

insertRow :: forall eff. HTMLTableSectionElement -> Eff (dom :: DOM | eff) HTMLElement
insertRow = insertRow' (-1)

foreign import insertRow' :: forall eff. Int -> HTMLTableSectionElement -> Eff (dom :: DOM | eff) HTMLElement

foreign import deleteRow :: forall eff. Int -> HTMLTableSectionElement -> Eff (dom :: DOM | eff) Unit
