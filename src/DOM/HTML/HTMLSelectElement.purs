module DOM.HTML.HTMLSelectElement
  ( autofocus
  , setAutofocus
  , disabled
  , setDisabled
  , form
  , multiple
  , setMultiple
  , name
  , setName
  , required
  , setRequired
  , size
  , setSize
  , type_
  , length
  , setLength
  , selectedOptions
  , selectedIndex
  , setSelectedIndex
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

import DOM.HTML.Types (HTMLSelectElement, HTMLFormElement, ValidityState)
import DOM.Node.Types (NodeList, HTMLCollection)

foreign import autofocus :: HTMLSelectElement -> Effect Boolean
foreign import setAutofocus :: Boolean -> HTMLSelectElement -> Effect Unit

foreign import disabled :: HTMLSelectElement -> Effect Boolean
foreign import setDisabled :: Boolean -> HTMLSelectElement -> Effect Unit

form :: HTMLSelectElement -> Effect (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: HTMLSelectElement -> Effect (Nullable HTMLFormElement)

foreign import multiple :: HTMLSelectElement -> Effect Boolean
foreign import setMultiple :: Boolean -> HTMLSelectElement -> Effect Unit

foreign import name :: HTMLSelectElement -> Effect String
foreign import setName :: String -> HTMLSelectElement -> Effect Unit

foreign import required :: HTMLSelectElement -> Effect Boolean
foreign import setRequired :: Boolean -> HTMLSelectElement -> Effect Unit

foreign import size :: HTMLSelectElement -> Effect Int
foreign import setSize :: Int -> HTMLSelectElement -> Effect Unit

foreign import type_ :: HTMLSelectElement -> Effect String

--   readonly attribute HTMLOptionsCollection options;

foreign import length :: HTMLSelectElement -> Effect Int
foreign import setLength :: Int -> HTMLSelectElement -> Effect Unit

--   getter Element? item(unsigned long index);
--   HTMLOptionElement? namedItem(DOMString name);
--   void add((HTMLOptionElement or HTMLOptGroupElement) element, optional (HTMLElement or long)? before = null);
--   void remove(); // ChildNode overload
--   void remove(long index);
--   setter creator void (unsigned long index, HTMLOptionElement? option);

foreign import selectedOptions :: HTMLSelectElement -> Effect HTMLCollection

foreign import selectedIndex :: HTMLSelectElement -> Effect Int
foreign import setSelectedIndex :: Int -> HTMLSelectElement -> Effect Unit

foreign import value :: HTMLSelectElement -> Effect String
foreign import setValue :: String -> HTMLSelectElement -> Effect Unit

foreign import willValidate :: HTMLSelectElement -> Effect Boolean

foreign import validity :: HTMLSelectElement -> Effect ValidityState

foreign import validationMessage :: HTMLSelectElement -> Effect String

foreign import checkValidity :: HTMLSelectElement -> Effect Boolean

foreign import setCustomValidity :: String -> HTMLSelectElement -> Effect Unit

foreign import labels :: HTMLSelectElement -> Effect NodeList
