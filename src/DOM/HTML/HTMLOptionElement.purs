module DOM.HTML.HTMLOptionElement
  ( disabled
  , setDisabled
  , form
  , label
  , setLabel
  , defaultSelected
  , setDefaultSelected
  , selected
  , setSelected
  , value
  , setValue
  , text
  , setText
  , index
  ) where

import Prelude

import Control.Monad.Effect (Effect)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM.HTML.Types (HTMLOptionElement, HTMLFormElement)

-- [NamedConstructor=Option(optional DOMString text = "", optional DOMString value, optional boolean defaultSelected = false, optional boolean selected = false)]

foreign import disabled :: HTMLOptionElement -> Effect Boolean
foreign import setDisabled :: Boolean -> HTMLOptionElement -> Effect Unit

form :: HTMLOptionElement -> Effect (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: HTMLOptionElement -> Effect (Nullable HTMLFormElement)

foreign import label :: HTMLOptionElement -> Effect String
foreign import setLabel :: String -> HTMLOptionElement -> Effect Unit

foreign import defaultSelected :: HTMLOptionElement -> Effect Boolean
foreign import setDefaultSelected :: Boolean -> HTMLOptionElement -> Effect Unit

foreign import selected :: HTMLOptionElement -> Effect Boolean
foreign import setSelected :: Boolean -> HTMLOptionElement -> Effect Unit

foreign import value :: HTMLOptionElement -> Effect String
foreign import setValue :: String -> HTMLOptionElement -> Effect Unit

foreign import text :: HTMLOptionElement -> Effect String
foreign import setText :: String -> HTMLOptionElement -> Effect Unit

foreign import index :: HTMLOptionElement -> Effect Int
