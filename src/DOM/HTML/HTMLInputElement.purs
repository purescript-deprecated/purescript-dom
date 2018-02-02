module DOM.HTML.HTMLInputElement
  ( accept
  , setAccept
  , alt
  , setAlt
  , autocomplete
  , setAutocomplete
  , autofocus
  , setAutofocus
  , defaultChecked
  , setDefaultChecked
  , checked
  , setChecked
  , dirName
  , setDirName
  , disabled
  , setDisabled
  , form
  , files
  , formAction
  , setFormAction
  , formEnctype
  , setFormEnctype
  , formMethod
  , setFormMethod
  , formNoValidate
  , setFormNoValidate
  , formTarget
  , setFormTarget
  , height
  , setHeight
  , indeterminate
  , setIndeterminate
  , list
  , max
  , setMax
  , maxLength
  , setMaxLength
  , min
  , setMin
  , minLength
  , setMinLength
  , multiple
  , setMultiple
  , name
  , setName
  , pattern
  , setPattern
  , placeholder
  , setPlaceholder
  , readOnly
  , setReadOnly
  , required
  , setRequired
  , size
  , setSize
  , src
  , setSrc
  , step
  , setStep
  , type_
  , setType
  , defaultValue
  , setDefaultValue
  , value
  , setValue
  , valueAsDate
  , setValueAsDate
  , valueAsNumber
  , setValueAsNumber
  , width
  , setWidth
  , stepUp'
  , stepDown'
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
import Data.JSDate (JSDate)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM.File.Types (FileList)
import DOM.HTML.SelectionMode (SelectionMode)
import DOM.HTML.Types (HTMLElement, HTMLInputElement, HTMLFormElement, ValidityState)
import DOM.Node.Types (NodeList)

foreign import accept :: HTMLInputElement -> Effect Boolean
foreign import setAccept :: Boolean -> HTMLInputElement -> Effect Unit

foreign import alt :: HTMLInputElement -> Effect Boolean
foreign import setAlt :: Boolean -> HTMLInputElement -> Effect Unit

foreign import autocomplete :: HTMLInputElement -> Effect Boolean
foreign import setAutocomplete :: Boolean -> HTMLInputElement -> Effect Unit

foreign import autofocus :: HTMLInputElement -> Effect Boolean
foreign import setAutofocus :: Boolean -> HTMLInputElement -> Effect Unit

foreign import defaultChecked :: HTMLInputElement -> Effect Boolean
foreign import setDefaultChecked :: Boolean -> HTMLInputElement -> Effect Unit

foreign import checked :: HTMLInputElement -> Effect Boolean
foreign import setChecked :: Boolean -> HTMLInputElement -> Effect Unit

foreign import dirName :: HTMLInputElement -> Effect String
foreign import setDirName :: String -> HTMLInputElement -> Effect Unit

foreign import disabled :: HTMLInputElement -> Effect Boolean
foreign import setDisabled :: Boolean -> HTMLInputElement -> Effect Unit

form :: HTMLInputElement -> Effect (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: HTMLInputElement -> Effect (Nullable HTMLFormElement)

files :: HTMLInputElement -> Effect (Maybe FileList)
files = map toMaybe <<< _files

foreign import _files :: HTMLInputElement -> Effect (Nullable FileList)

foreign import formAction :: HTMLInputElement -> Effect String
foreign import setFormAction :: String -> HTMLInputElement -> Effect Unit

foreign import formEnctype :: HTMLInputElement -> Effect String
foreign import setFormEnctype :: String -> HTMLInputElement -> Effect Unit

foreign import formMethod :: HTMLInputElement -> Effect String
foreign import setFormMethod :: String -> HTMLInputElement -> Effect Unit

foreign import formNoValidate :: HTMLInputElement -> Effect Boolean
foreign import setFormNoValidate :: Boolean -> HTMLInputElement -> Effect Unit

foreign import formTarget :: HTMLInputElement -> Effect String
foreign import setFormTarget :: String -> HTMLInputElement -> Effect Unit

foreign import height :: HTMLInputElement -> Effect Int
foreign import setHeight :: Int -> HTMLInputElement -> Effect Unit

foreign import indeterminate :: HTMLInputElement -> Effect Boolean
foreign import setIndeterminate :: Boolean -> HTMLInputElement -> Effect Unit

list :: HTMLInputElement -> Effect (Maybe HTMLElement)
list = map toMaybe <<< _list

foreign import _list :: HTMLInputElement -> Effect (Nullable HTMLElement)

foreign import max :: HTMLInputElement -> Effect String
foreign import setMax :: String -> HTMLInputElement -> Effect Unit

foreign import maxLength :: HTMLInputElement -> Effect Int
foreign import setMaxLength :: Int -> HTMLInputElement -> Effect Unit

foreign import min :: HTMLInputElement -> Effect String
foreign import setMin :: String -> HTMLInputElement -> Effect Unit

foreign import minLength :: HTMLInputElement -> Effect Int
foreign import setMinLength :: Int -> HTMLInputElement -> Effect Unit

foreign import multiple :: HTMLInputElement -> Effect Boolean
foreign import setMultiple :: Boolean -> HTMLInputElement -> Effect Unit

foreign import name :: HTMLInputElement -> Effect String
foreign import setName :: String -> HTMLInputElement -> Effect Unit

foreign import pattern :: HTMLInputElement -> Effect String
foreign import setPattern :: String -> HTMLInputElement -> Effect Unit

foreign import placeholder :: HTMLInputElement -> Effect String
foreign import setPlaceholder :: String -> HTMLInputElement -> Effect Unit

foreign import readOnly :: HTMLInputElement -> Effect Boolean
foreign import setReadOnly :: Boolean -> HTMLInputElement -> Effect Unit

foreign import required :: HTMLInputElement -> Effect Boolean
foreign import setRequired :: Boolean -> HTMLInputElement -> Effect Unit

foreign import size :: HTMLInputElement -> Effect Int
foreign import setSize :: Int -> HTMLInputElement -> Effect Unit

foreign import src :: HTMLInputElement -> Effect String
foreign import setSrc :: String -> HTMLInputElement -> Effect Unit

foreign import step :: HTMLInputElement -> Effect String
foreign import setStep :: String -> HTMLInputElement -> Effect Unit

foreign import type_ :: HTMLInputElement -> Effect String
foreign import setType :: String -> HTMLInputElement -> Effect Unit

foreign import defaultValue :: HTMLInputElement -> Effect String
foreign import setDefaultValue :: String -> HTMLInputElement -> Effect Unit

foreign import value :: HTMLInputElement -> Effect String
foreign import setValue :: String -> HTMLInputElement -> Effect Unit

foreign import valueAsDate :: HTMLInputElement -> Effect JSDate
foreign import setValueAsDate :: JSDate -> HTMLInputElement -> Effect Unit

foreign import valueAsNumber :: HTMLInputElement -> Effect Number
foreign import setValueAsNumber :: Number -> HTMLInputElement -> Effect Unit

foreign import width :: HTMLInputElement -> Effect Int
foreign import setWidth :: Int -> HTMLInputElement -> Effect Unit

stepUp :: HTMLInputElement -> Effect Unit
stepUp = stepUp' 1

foreign import stepUp' :: Int -> HTMLInputElement -> Effect Unit

stepDown :: HTMLInputElement -> Effect Unit
stepDown = stepDown' 1

foreign import stepDown' :: Int -> HTMLInputElement -> Effect Unit

foreign import willValidate :: HTMLInputElement -> Effect Boolean

foreign import validity :: HTMLInputElement -> Effect ValidityState

foreign import validationMessage :: HTMLInputElement -> Effect String

foreign import checkValidity :: HTMLInputElement -> Effect Boolean

foreign import setCustomValidity :: String -> HTMLInputElement -> Effect Unit

foreign import labels :: HTMLInputElement -> Effect NodeList

foreign import select :: HTMLInputElement -> Effect Unit

foreign import selectionStart :: HTMLInputElement -> Effect Int
foreign import setSelectionStart :: Int -> HTMLInputElement -> Effect Unit

foreign import selectionEnd :: HTMLInputElement -> Effect Int
foreign import setSelectionEnd :: Int -> HTMLInputElement -> Effect Unit

foreign import selectionDirection :: HTMLInputElement -> Effect String
foreign import setSelectionDirection :: String -> HTMLInputElement -> Effect Unit

foreign import setRangeText :: String -> HTMLInputElement -> Effect Unit
foreign import setRangeText' :: String -> Int -> Int -> SelectionMode -> HTMLInputElement -> Effect Unit

foreign import setSelectionRange :: Int -> Int -> String -> HTMLInputElement -> Effect Unit
