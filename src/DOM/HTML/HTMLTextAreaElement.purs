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

import Control.Monad.Eff (Eff)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM (DOM)
import DOM.HTML.SelectionMode (SelectionMode)
import DOM.HTML.Types (HTMLTextAreaElement, HTMLFormElement, ValidityState)
import DOM.Node.Types (NodeList)

foreign import autocomplete :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) String
foreign import setAutocomplete :: forall eff. String -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import autofocus :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Boolean
foreign import setAutofocus :: forall eff. Boolean -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import cols :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Int
foreign import setCols :: forall eff. Int -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import dirName :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) String
foreign import setDirName :: forall eff. String -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import disabled :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDisabled :: forall eff. Boolean -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

form :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) (Nullable HTMLFormElement)

foreign import maxLength :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Int
foreign import setMaxLength :: forall eff. Int -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import minLength :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Int
foreign import setMinLength :: forall eff. Int -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import name :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) String
foreign import setName :: forall eff. String -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import placeholder :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) String
foreign import setPlaceholder :: forall eff. String -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import readOnly :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Boolean
foreign import setReadOnly :: forall eff. Boolean -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import required :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Boolean
foreign import setRequired :: forall eff. Boolean -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import rows :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Int
foreign import setRows :: forall eff. Int -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import wrap :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) String
foreign import setWrap :: forall eff. String -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) String

foreign import defaultValue :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) String
foreign import setDefaultValue :: forall eff. String -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import value :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) String
foreign import setValue :: forall eff. String -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import textLength :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Int

foreign import willValidate :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Boolean

foreign import validity :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) ValidityState

foreign import validationMessage :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) String

foreign import checkValidity :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Boolean

foreign import setCustomValidity :: forall eff. String -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import labels :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) NodeList

foreign import select :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import selectionStart :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Int
foreign import setSelectionStart :: forall eff. Int -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import selectionEnd :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) Int
foreign import setSelectionEnd :: forall eff. Int -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import selectionDirection :: forall eff. HTMLTextAreaElement -> Eff (dom :: DOM | eff) String
foreign import setSelectionDirection :: forall eff. String -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import setRangeText :: forall eff. String -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit
foreign import setRangeText' :: forall eff. String -> Int -> Int -> SelectionMode -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit

foreign import setSelectionRange :: forall eff. Int -> Int -> String -> HTMLTextAreaElement -> Eff (dom :: DOM | eff) Unit
