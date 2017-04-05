module DOM.HTML.HTMLFieldSetElement
  ( disabled
  , setDisabled
  , form
  , name
  , setName
  , type_
  , setType
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
import DOM.HTML.Types (HTMLFieldSetElement, HTMLFormElement, ValidityState)

foreign import disabled :: forall eff. HTMLFieldSetElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDisabled :: forall eff. Boolean -> HTMLFieldSetElement -> Eff (dom :: DOM | eff) Unit

foreign import _form :: forall eff. HTMLFieldSetElement -> Eff (dom :: DOM | eff) (Nullable HTMLFormElement)

form :: forall eff. HTMLFieldSetElement -> Eff (dom :: DOM | eff) (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import name :: forall eff. HTMLFieldSetElement -> Eff (dom :: DOM | eff) String
foreign import setName :: forall eff. String -> HTMLFieldSetElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLFieldSetElement -> Eff (dom :: DOM | eff) String
foreign import setType :: forall eff. String -> HTMLFieldSetElement -> Eff (dom :: DOM | eff) Unit

--   readonly attribute HTMLFormControlsCollection elements;

foreign import willValidate :: forall eff. HTMLFieldSetElement -> Eff (dom :: DOM | eff) Boolean

foreign import validity :: forall eff. HTMLFieldSetElement -> Eff (dom :: DOM | eff) ValidityState

foreign import validationMessage :: forall eff. HTMLFieldSetElement -> Eff (dom :: DOM | eff) String

foreign import checkValidity :: forall eff. HTMLFieldSetElement -> Eff (dom :: DOM | eff) Boolean

foreign import setCustomValidity :: forall eff. String -> HTMLFieldSetElement -> Eff (dom :: DOM | eff) Unit
