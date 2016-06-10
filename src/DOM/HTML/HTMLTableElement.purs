module DOM.HTML.HTMLTableElement where

import Prelude (Unit, negate)

import Control.Monad.Eff (Eff)

import Data.Nullable (Nullable)

import DOM (DOM)
import DOM.HTML.Types (HTMLTableElement, HTMLTableCaptionElement, HTMLElement, HTMLTableSectionElement)
import DOM.Node.Types (HTMLCollection)

foreign import caption :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) (Nullable HTMLTableCaptionElement)
foreign import setCaption :: forall eff. Nullable HTMLTableCaptionElement -> HTMLTableElement -> Eff (dom :: DOM | eff) Unit

foreign import createCaption :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) HTMLElement
foreign import deleteCaption :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) Unit

foreign import tHead :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) (Nullable HTMLTableSectionElement)
foreign import setTHead :: forall eff. Nullable HTMLTableSectionElement -> HTMLTableElement -> Eff (dom :: DOM | eff) Unit

foreign import createTHead :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) HTMLElement
foreign import deleteTHead :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) Unit

foreign import tFoot :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) (Nullable HTMLTableSectionElement)
foreign import setTFoot :: forall eff. Nullable HTMLTableSectionElement -> HTMLTableElement -> Eff (dom :: DOM | eff) Unit

foreign import createTFoot :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) HTMLElement
foreign import deleteTFoot :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) Unit

foreign import tBodies :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) HTMLCollection
foreign import createTBody :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) HTMLElement

foreign import rows :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) HTMLCollection

insertRow :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) HTMLElement
insertRow = insertRow' (-1)

foreign import insertRow' :: forall eff. Int -> HTMLTableElement -> Eff (dom :: DOM | eff) HTMLElement

foreign import deleteRow :: forall eff. Int -> HTMLTableElement -> Eff (dom :: DOM | eff) Unit

foreign import border :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) String
foreign import setBorder :: forall eff. String -> HTMLTableElement -> Eff (dom :: DOM | eff) Unit
