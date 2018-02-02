module DOM.HTML.HTMLObjectElement
  ( data_
  , setData
  , type_
  , setType
  , typeMustMatch
  , name
  , setName
  , useMap
  , setUseMap
  , form
  , width
  , setWidth
  , height
  , setHeight
  , contentDocument
  , willValidate
  , validity
  , validationMessage
  , checkValidity
  , setCustomValidity
  ) where

import Prelude

import Control.Monad.Effect (Effect)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM.HTML.Types (HTMLObjectElement, HTMLFormElement, ValidityState)
import DOM.Node.Types (Document)

foreign import data_ :: HTMLObjectElement -> Effect String
foreign import setData :: String -> HTMLObjectElement -> Effect Unit

foreign import type_ :: HTMLObjectElement -> Effect String
foreign import setType :: String -> HTMLObjectElement -> Effect Unit

foreign import typeMustMatch :: HTMLObjectElement -> Effect Boolean

foreign import name :: HTMLObjectElement -> Effect String
foreign import setName :: String -> HTMLObjectElement -> Effect Unit

foreign import useMap :: HTMLObjectElement -> Effect String
foreign import setUseMap :: String -> HTMLObjectElement -> Effect Unit

form :: HTMLObjectElement -> Effect (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: HTMLObjectElement -> Effect (Nullable HTMLFormElement)

foreign import width :: HTMLObjectElement -> Effect String
foreign import setWidth :: String -> HTMLObjectElement -> Effect Unit

foreign import height :: HTMLObjectElement -> Effect String
foreign import setHeight :: String -> HTMLObjectElement -> Effect Unit

contentDocument :: HTMLObjectElement -> Effect (Maybe Document)
contentDocument = map toMaybe <<< _contentDocument

foreign import _contentDocument :: HTMLObjectElement -> Effect (Nullable Document)

--   readonly attribute WindowProxy? contentWindow;

foreign import willValidate :: HTMLObjectElement -> Effect Boolean

foreign import validity :: HTMLObjectElement -> Effect ValidityState

foreign import validationMessage :: HTMLObjectElement -> Effect String

foreign import checkValidity :: HTMLObjectElement -> Effect Boolean

foreign import setCustomValidity :: String -> HTMLObjectElement -> Effect Unit

--   legacycaller any (any... arguments);
