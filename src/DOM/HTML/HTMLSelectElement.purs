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

import Control.Monad.Eff (Eff)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM (DOM)
import DOM.HTML.Types (HTMLSelectElement, HTMLFormElement, ValidityState)
import DOM.Node.Types (NodeList, HTMLCollection)

foreign import autofocus :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) Boolean
foreign import setAutofocus :: forall eff. Boolean -> HTMLSelectElement -> Eff (dom :: DOM | eff) Unit

foreign import disabled :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDisabled :: forall eff. Boolean -> HTMLSelectElement -> Eff (dom :: DOM | eff) Unit

form :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) (Nullable HTMLFormElement)

foreign import multiple :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) Boolean
foreign import setMultiple :: forall eff. Boolean -> HTMLSelectElement -> Eff (dom :: DOM | eff) Unit

foreign import name :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) String
foreign import setName :: forall eff. String -> HTMLSelectElement -> Eff (dom :: DOM | eff) Unit

foreign import required :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) Boolean
foreign import setRequired :: forall eff. Boolean -> HTMLSelectElement -> Eff (dom :: DOM | eff) Unit

foreign import size :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) Int
foreign import setSize :: forall eff. Int -> HTMLSelectElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) String

--   readonly attribute HTMLOptionsCollection options;

foreign import length :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) Int
foreign import setLength :: forall eff. Int -> HTMLSelectElement -> Eff (dom :: DOM | eff) Unit

--   getter Element? item(unsigned long index);
--   HTMLOptionElement? namedItem(DOMString name);
--   void add((HTMLOptionElement or HTMLOptGroupElement) element, optional (HTMLElement or long)? before = null);
--   void remove(); // ChildNode overload
--   void remove(long index);
--   setter creator void (unsigned long index, HTMLOptionElement? option);

foreign import selectedOptions :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) HTMLCollection

foreign import selectedIndex :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) Int
foreign import setSelectedIndex :: forall eff. Int -> HTMLSelectElement -> Eff (dom :: DOM | eff) Unit

foreign import value :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) String
foreign import setValue :: forall eff. String -> HTMLSelectElement -> Eff (dom :: DOM | eff) Unit

foreign import willValidate :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) Boolean

foreign import validity :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) ValidityState

foreign import validationMessage :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) String

foreign import checkValidity :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) Boolean

foreign import setCustomValidity :: forall eff. String -> HTMLSelectElement -> Eff (dom :: DOM | eff) Unit

foreign import labels :: forall eff. HTMLSelectElement -> Eff (dom :: DOM | eff) NodeList
