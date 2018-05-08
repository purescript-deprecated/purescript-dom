module DOM.HTML.HTMLTextAreaElement
  ( autocomplete
  , setAutocomplete
  , autofocus
  , setAutofocus
  , cols
  , setCols
  , dirName
  , setDirName
  , disabled
  , setDisabled
  , form
  , maxLength
  , setMaxLength
  , minLength
  , setMinLength
  , name
  , setName
  , placeholder
  , setPlaceholder
  , readOnly
  , setReadOnly
  , required
  , setRequired
  , rows
  , setRows
  , wrap
  , setWrap
  , type_
  , defaultValue
  , setDefaultValue
  , value
  , setValue
  , textLength
  , willValidate
  , validity
  , validationMessage
  , checkValidity
  , setCustomValidity
  , labels
  , select
  , selectionStart
  , setSelectionStart
  , selectionEnd
  , setSelectionEnd
  , selectionDirection
  , setSelectionDirection
  , setRangeText
  , setRangeText'
  , setSelectionRange
  ) where

import Prelude

import Control.Monad.Effect (Effect)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM.HTML.SelectionMode (SelectionMode)
import DOM.HTML.Types (HTMLTextAreaElement, HTMLFormElement, ValidityState)
import DOM.Node.Types (NodeList)

foreign import autocomplete :: HTMLTextAreaElement -> Effect String
foreign import setAutocomplete :: String -> HTMLTextAreaElement -> Effect Unit

foreign import autofocus :: HTMLTextAreaElement -> Effect Boolean
foreign import setAutofocus :: Boolean -> HTMLTextAreaElement -> Effect Unit

foreign import cols :: HTMLTextAreaElement -> Effect Int
foreign import setCols :: Int -> HTMLTextAreaElement -> Effect Unit

foreign import dirName :: HTMLTextAreaElement -> Effect String
foreign import setDirName :: String -> HTMLTextAreaElement -> Effect Unit

foreign import disabled :: HTMLTextAreaElement -> Effect Boolean
foreign import setDisabled :: Boolean -> HTMLTextAreaElement -> Effect Unit

form :: HTMLTextAreaElement -> Effect (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: HTMLTextAreaElement -> Effect (Nullable HTMLFormElement)

foreign import maxLength :: HTMLTextAreaElement -> Effect Int
foreign import setMaxLength :: Int -> HTMLTextAreaElement -> Effect Unit

foreign import minLength :: HTMLTextAreaElement -> Effect Int
foreign import setMinLength :: Int -> HTMLTextAreaElement -> Effect Unit

foreign import name :: HTMLTextAreaElement -> Effect String
foreign import setName :: String -> HTMLTextAreaElement -> Effect Unit

foreign import placeholder :: HTMLTextAreaElement -> Effect String
foreign import setPlaceholder :: String -> HTMLTextAreaElement -> Effect Unit

foreign import readOnly :: HTMLTextAreaElement -> Effect Boolean
foreign import setReadOnly :: Boolean -> HTMLTextAreaElement -> Effect Unit

foreign import required :: HTMLTextAreaElement -> Effect Boolean
foreign import setRequired :: Boolean -> HTMLTextAreaElement -> Effect Unit

foreign import rows :: HTMLTextAreaElement -> Effect Int
foreign import setRows :: Int -> HTMLTextAreaElement -> Effect Unit

foreign import wrap :: HTMLTextAreaElement -> Effect String
foreign import setWrap :: String -> HTMLTextAreaElement -> Effect Unit

foreign import type_ :: HTMLTextAreaElement -> Effect String

foreign import defaultValue :: HTMLTextAreaElement -> Effect String
foreign import setDefaultValue :: String -> HTMLTextAreaElement -> Effect Unit

foreign import value :: HTMLTextAreaElement -> Effect String
foreign import setValue :: String -> HTMLTextAreaElement -> Effect Unit

foreign import textLength :: HTMLTextAreaElement -> Effect Int

foreign import willValidate :: HTMLTextAreaElement -> Effect Boolean

foreign import validity :: HTMLTextAreaElement -> Effect ValidityState

foreign import validationMessage :: HTMLTextAreaElement -> Effect String

foreign import checkValidity :: HTMLTextAreaElement -> Effect Boolean

foreign import setCustomValidity :: String -> HTMLTextAreaElement -> Effect Unit

foreign import labels :: HTMLTextAreaElement -> Effect NodeList

foreign import select :: HTMLTextAreaElement -> Effect Unit

foreign import selectionStart :: HTMLTextAreaElement -> Effect Int
foreign import setSelectionStart :: Int -> HTMLTextAreaElement -> Effect Unit

foreign import selectionEnd :: HTMLTextAreaElement -> Effect Int
foreign import setSelectionEnd :: Int -> HTMLTextAreaElement -> Effect Unit

foreign import selectionDirection :: HTMLTextAreaElement -> Effect String
foreign import setSelectionDirection :: String -> HTMLTextAreaElement -> Effect Unit

foreign import setRangeText :: String -> HTMLTextAreaElement -> Effect Unit
foreign import setRangeText' :: String -> Int -> Int -> SelectionMode -> HTMLTextAreaElement -> Effect Unit

foreign import setSelectionRange :: Int -> Int -> String -> HTMLTextAreaElement -> Effect Unit
