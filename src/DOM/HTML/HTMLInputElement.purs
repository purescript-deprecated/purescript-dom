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
import Control.Monad.Eff (Eff)
import Data.JSDate (JSDate)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import DOM (DOM)
import DOM.File.Types (FileList)
import DOM.HTML.SelectionMode (SelectionMode)
import DOM.HTML.Types (HTMLElement, HTMLInputElement, HTMLFormElement, ValidityState)
import DOM.Node.Types (NodeList)

foreign import accept :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean
foreign import setAccept :: forall eff. Boolean -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import alt :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean
foreign import setAlt :: forall eff. Boolean -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import autocomplete :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean
foreign import setAutocomplete :: forall eff. Boolean -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import autofocus :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean
foreign import setAutofocus :: forall eff. Boolean -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import defaultChecked :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDefaultChecked :: forall eff. Boolean -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import checked :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean
foreign import setChecked :: forall eff. Boolean -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import dirName :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setDirName :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import disabled :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDisabled :: forall eff. Boolean -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

form :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) (Nullable HTMLFormElement)

files :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) (Maybe FileList)
files = map toMaybe <<< _files

foreign import _files :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) (Nullable FileList)

foreign import formAction :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setFormAction :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import formEnctype :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setFormEnctype :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import formMethod :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setFormMethod :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import formNoValidate :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean
foreign import setFormNoValidate :: forall eff. Boolean -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import formTarget :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setFormTarget :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import height :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Int
foreign import setHeight :: forall eff. Int -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import indeterminate :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean
foreign import setIndeterminate :: forall eff. Boolean -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

list :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) (Maybe HTMLElement)
list = map toMaybe <<< _list

foreign import _list :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) (Nullable HTMLElement)

foreign import max :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setMax :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import maxLength :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Int
foreign import setMaxLength :: forall eff. Int -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import min :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setMin :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import minLength :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Int
foreign import setMinLength :: forall eff. Int -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import multiple :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean
foreign import setMultiple :: forall eff. Boolean -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import name :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setName :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import pattern :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setPattern :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import placeholder :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setPlaceholder :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import readOnly :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean
foreign import setReadOnly :: forall eff. Boolean -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import required :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean
foreign import setRequired :: forall eff. Boolean -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import size :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Int
foreign import setSize :: forall eff. Int -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import src :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setSrc :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import step :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setStep :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setType :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import defaultValue :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setDefaultValue :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import value :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setValue :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import valueAsDate :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) JSDate
foreign import setValueAsDate :: forall eff. JSDate -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import valueAsNumber :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Number
foreign import setValueAsNumber :: forall eff. Number -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import width :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Int
foreign import setWidth :: forall eff. Int -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

stepUp :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Unit
stepUp = stepUp' 1

foreign import stepUp' :: forall eff. Int -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

stepDown :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Unit
stepDown = stepDown' 1

foreign import stepDown' :: forall eff. Int -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import willValidate :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean

foreign import validity :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) ValidityState

foreign import validationMessage :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String

foreign import checkValidity :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Boolean

foreign import setCustomValidity :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import labels :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) NodeList

foreign import select :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import selectionStart :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Int
foreign import setSelectionStart :: forall eff. Int -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import selectionEnd :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) Int
foreign import setSelectionEnd :: forall eff. Int -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import selectionDirection :: forall eff. HTMLInputElement -> Eff (dom :: DOM | eff) String
foreign import setSelectionDirection :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import setRangeText :: forall eff. String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit
foreign import setRangeText' :: forall eff. String -> Int -> Int -> SelectionMode -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit

foreign import setSelectionRange :: forall eff. Int -> Int -> String -> HTMLInputElement -> Eff (dom :: DOM | eff) Unit
