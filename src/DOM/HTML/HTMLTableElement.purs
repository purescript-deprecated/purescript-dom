module DOM.HTML.HTMLTableElement
  ( caption
  , setCaption
  , createCaption
  , deleteCaption
  , tHead
  , setTHead
  , createTHead
  , deleteTHead
  , tFoot
  , setTFoot
  , createTFoot
  , deleteTFoot
  , tBodies
  , createTBody
  , rows
  , insertRow
  , insertRow'
  , deleteRow
  , border
  , setBorder
  ) where

import Prelude

import Control.Monad.Eff (Eff)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe, toNullable)

import DOM (DOM)
import DOM.HTML.Types (HTMLTableElement, HTMLTableCaptionElement, HTMLElement, HTMLTableSectionElement)
import DOM.Node.Types (HTMLCollection)

caption :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) (Maybe HTMLTableCaptionElement)
caption = map toMaybe <<< _caption

setCaption :: forall eff. Maybe HTMLTableCaptionElement -> HTMLTableElement -> Eff (dom :: DOM | eff) Unit
setCaption = _setCaption <<< toNullable

foreign import _caption :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) (Nullable HTMLTableCaptionElement)
foreign import _setCaption :: forall eff. Nullable HTMLTableCaptionElement -> HTMLTableElement -> Eff (dom :: DOM | eff) Unit

foreign import createCaption :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) HTMLElement
foreign import deleteCaption :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) Unit

tHead :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) (Maybe HTMLTableSectionElement)
tHead = map toMaybe <<< _tHead

setTHead :: forall eff. Maybe HTMLTableSectionElement -> HTMLTableElement -> Eff (dom :: DOM | eff) Unit
setTHead = _setTHead <<< toNullable

foreign import _tHead :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) (Nullable HTMLTableSectionElement)
foreign import _setTHead :: forall eff. Nullable HTMLTableSectionElement -> HTMLTableElement -> Eff (dom :: DOM | eff) Unit

foreign import createTHead :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) HTMLElement
foreign import deleteTHead :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) Unit

tFoot :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) (Maybe HTMLTableSectionElement)
tFoot = map toMaybe <<< _tFoot

setTFoot :: forall eff. Maybe HTMLTableSectionElement -> HTMLTableElement -> Eff (dom :: DOM | eff) Unit
setTFoot = _setTFoot <<< toNullable

foreign import _tFoot :: forall eff. HTMLTableElement -> Eff (dom :: DOM | eff) (Nullable HTMLTableSectionElement)
foreign import _setTFoot :: forall eff. Nullable HTMLTableSectionElement -> HTMLTableElement -> Eff (dom :: DOM | eff) Unit

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
