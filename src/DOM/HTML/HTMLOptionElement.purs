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

import Control.Monad.Eff (Eff)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM (DOM)
import DOM.HTML.Types (HTMLOptionElement, HTMLFormElement)

-- [NamedConstructor=Option(optional DOMString text = "", optional DOMString value, optional boolean defaultSelected = false, optional boolean selected = false)]

foreign import disabled :: forall eff. HTMLOptionElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDisabled :: forall eff. Boolean -> HTMLOptionElement -> Eff (dom :: DOM | eff) Unit

form :: forall eff. HTMLOptionElement -> Eff (dom :: DOM | eff) (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: forall eff. HTMLOptionElement -> Eff (dom :: DOM | eff) (Nullable HTMLFormElement)

foreign import label :: forall eff. HTMLOptionElement -> Eff (dom :: DOM | eff) String
foreign import setLabel :: forall eff. String -> HTMLOptionElement -> Eff (dom :: DOM | eff) Unit

foreign import defaultSelected :: forall eff. HTMLOptionElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDefaultSelected :: forall eff. Boolean -> HTMLOptionElement -> Eff (dom :: DOM | eff) Unit

foreign import selected :: forall eff. HTMLOptionElement -> Eff (dom :: DOM | eff) Boolean
foreign import setSelected :: forall eff. Boolean -> HTMLOptionElement -> Eff (dom :: DOM | eff) Unit

foreign import value :: forall eff. HTMLOptionElement -> Eff (dom :: DOM | eff) String
foreign import setValue :: forall eff. String -> HTMLOptionElement -> Eff (dom :: DOM | eff) Unit

foreign import text :: forall eff. HTMLOptionElement -> Eff (dom :: DOM | eff) String
foreign import setText :: forall eff. String -> HTMLOptionElement -> Eff (dom :: DOM | eff) Unit

foreign import index :: forall eff. HTMLOptionElement -> Eff (dom :: DOM | eff) Int
