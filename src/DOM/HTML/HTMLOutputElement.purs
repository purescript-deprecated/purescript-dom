module DOM.HTML.HTMLOutputElement
  ( form
  , name
  , setName
  , type_
  , defaultValue
  , setDefaultValue
  , value
  , setValue
  , willValidate
  , validity
  , validationMessage
  , checkValidity
  , setCustomValidity
  , labels
  ) where

import Prelude

import Control.Monad.Effect (Effect)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM.Node.Types (NodeList)
import DOM.HTML.Types (HTMLOutputElement, HTMLFormElement, ValidityState)

--   [PutForwards=value] readonly attribute DOMSettableTokenList htmlFor;

form :: HTMLOutputElement -> Effect (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: HTMLOutputElement -> Effect (Nullable HTMLFormElement)

foreign import name :: HTMLOutputElement -> Effect String
foreign import setName :: String -> HTMLOutputElement -> Effect Unit

foreign import type_ :: HTMLOutputElement -> Effect String

foreign import defaultValue :: HTMLOutputElement -> Effect String
foreign import setDefaultValue :: String -> HTMLOutputElement -> Effect Unit

foreign import value :: HTMLOutputElement -> Effect String
foreign import setValue :: String -> HTMLOutputElement -> Effect Unit

foreign import willValidate :: HTMLOutputElement -> Effect Boolean

foreign import validity :: HTMLOutputElement -> Effect ValidityState

foreign import validationMessage :: HTMLOutputElement -> Effect String

foreign import checkValidity :: HTMLOutputElement -> Effect Boolean

foreign import setCustomValidity :: String -> HTMLOutputElement -> Effect Unit

foreign import labels :: HTMLOutputElement -> Effect NodeList
