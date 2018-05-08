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

import Control.Monad.Effect (Effect)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe, toNullable)

import DOM.HTML.Types (HTMLTableElement, HTMLTableCaptionElement, HTMLElement, HTMLTableSectionElement)
import DOM.Node.Types (HTMLCollection)

caption :: HTMLTableElement -> Effect (Maybe HTMLTableCaptionElement)
caption = map toMaybe <<< _caption

setCaption :: Maybe HTMLTableCaptionElement -> HTMLTableElement -> Effect Unit
setCaption = _setCaption <<< toNullable

foreign import _caption :: HTMLTableElement -> Effect (Nullable HTMLTableCaptionElement)
foreign import _setCaption :: Nullable HTMLTableCaptionElement -> HTMLTableElement -> Effect Unit

foreign import createCaption :: HTMLTableElement -> Effect HTMLElement
foreign import deleteCaption :: HTMLTableElement -> Effect Unit

tHead :: HTMLTableElement -> Effect (Maybe HTMLTableSectionElement)
tHead = map toMaybe <<< _tHead

setTHead :: Maybe HTMLTableSectionElement -> HTMLTableElement -> Effect Unit
setTHead = _setTHead <<< toNullable

foreign import _tHead :: HTMLTableElement -> Effect (Nullable HTMLTableSectionElement)
foreign import _setTHead :: Nullable HTMLTableSectionElement -> HTMLTableElement -> Effect Unit

foreign import createTHead :: HTMLTableElement -> Effect HTMLElement
foreign import deleteTHead :: HTMLTableElement -> Effect Unit

tFoot :: HTMLTableElement -> Effect (Maybe HTMLTableSectionElement)
tFoot = map toMaybe <<< _tFoot

setTFoot :: Maybe HTMLTableSectionElement -> HTMLTableElement -> Effect Unit
setTFoot = _setTFoot <<< toNullable

foreign import _tFoot :: HTMLTableElement -> Effect (Nullable HTMLTableSectionElement)
foreign import _setTFoot :: Nullable HTMLTableSectionElement -> HTMLTableElement -> Effect Unit

foreign import createTFoot :: HTMLTableElement -> Effect HTMLElement
foreign import deleteTFoot :: HTMLTableElement -> Effect Unit

foreign import tBodies :: HTMLTableElement -> Effect HTMLCollection
foreign import createTBody :: HTMLTableElement -> Effect HTMLElement

foreign import rows :: HTMLTableElement -> Effect HTMLCollection

insertRow :: HTMLTableElement -> Effect HTMLElement
insertRow = insertRow' (-1)

foreign import insertRow' :: Int -> HTMLTableElement -> Effect HTMLElement

foreign import deleteRow :: Int -> HTMLTableElement -> Effect Unit

foreign import border :: HTMLTableElement -> Effect String
foreign import setBorder :: String -> HTMLTableElement -> Effect Unit
