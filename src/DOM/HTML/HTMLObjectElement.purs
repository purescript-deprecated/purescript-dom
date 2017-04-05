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

import Control.Monad.Eff (Eff)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM (DOM)
import DOM.HTML.Types (HTMLObjectElement, HTMLFormElement, ValidityState)
import DOM.Node.Types (Document)

foreign import data_ :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) String
foreign import setData :: forall eff. String -> HTMLObjectElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) String
foreign import setType :: forall eff. String -> HTMLObjectElement -> Eff (dom :: DOM | eff) Unit

foreign import typeMustMatch :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) Boolean

foreign import name :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) String
foreign import setName :: forall eff. String -> HTMLObjectElement -> Eff (dom :: DOM | eff) Unit

foreign import useMap :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) String
foreign import setUseMap :: forall eff. String -> HTMLObjectElement -> Eff (dom :: DOM | eff) Unit

form :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) (Nullable HTMLFormElement)

foreign import width :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) String
foreign import setWidth :: forall eff. String -> HTMLObjectElement -> Eff (dom :: DOM | eff) Unit

foreign import height :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) String
foreign import setHeight :: forall eff. String -> HTMLObjectElement -> Eff (dom :: DOM | eff) Unit

contentDocument :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) (Maybe Document)
contentDocument = map toMaybe <<< _contentDocument

foreign import _contentDocument :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) (Nullable Document)

--   readonly attribute WindowProxy? contentWindow;

foreign import willValidate :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) Boolean

foreign import validity :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) ValidityState

foreign import validationMessage :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) String

foreign import checkValidity :: forall eff. HTMLObjectElement -> Eff (dom :: DOM | eff) Boolean

foreign import setCustomValidity :: forall eff. String -> HTMLObjectElement -> Eff (dom :: DOM | eff) Unit

--   legacycaller any (any... arguments);
