module DOM.HTML.HTMLTableRowElement where

import Prelude (Unit, negate)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLTableRowElement, HTMLElement)
import DOM.Node.Types (HTMLCollection)

foreign import rowIndex :: forall eff. HTMLTableRowElement -> Eff (dom :: DOM | eff) Int

foreign import sectionRowIndex :: forall eff. HTMLTableRowElement -> Eff (dom :: DOM | eff) Int

foreign import cells :: forall eff. HTMLTableRowElement -> Eff (dom :: DOM | eff) HTMLCollection

insertCell :: forall eff. HTMLTableRowElement -> Eff (dom :: DOM | eff) HTMLElement
insertCell = insertCell' (-1)

foreign import insertCell' :: forall eff. Int -> HTMLTableRowElement -> Eff (dom :: DOM | eff) HTMLElement

foreign import deleteCell :: forall eff. Int -> HTMLTableRowElement -> Eff (dom :: DOM | eff) Unit
