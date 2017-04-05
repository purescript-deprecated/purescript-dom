module DOM.HTML.HTMLKeygenElement
  ( autofocus
  , setAutofocus
  , challenge
  , setChallenge
  , disabled
  , setDisabled
  , form
  , keytype
  , setKeytype
  , name
  , setName
  , type_
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
import DOM.Node.Types (NodeList)
import DOM.HTML.Types (HTMLKeygenElement, HTMLFormElement, ValidityState)

foreign import autofocus :: forall eff. HTMLKeygenElement -> Eff (dom :: DOM | eff) Boolean
foreign import setAutofocus :: forall eff. Boolean -> HTMLKeygenElement -> Eff (dom :: DOM | eff) Unit

foreign import challenge :: forall eff. HTMLKeygenElement -> Eff (dom :: DOM | eff) String
foreign import setChallenge :: forall eff. String -> HTMLKeygenElement -> Eff (dom :: DOM | eff) Unit

foreign import disabled :: forall eff. HTMLKeygenElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDisabled :: forall eff. Boolean -> HTMLKeygenElement -> Eff (dom :: DOM | eff) Unit

form :: forall eff. HTMLKeygenElement -> Eff (dom :: DOM | eff) (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: forall eff. HTMLKeygenElement -> Eff (dom :: DOM | eff) (Nullable HTMLFormElement)

foreign import keytype :: forall eff. HTMLKeygenElement -> Eff (dom :: DOM | eff) String
foreign import setKeytype :: forall eff. String -> HTMLKeygenElement -> Eff (dom :: DOM | eff) Unit

foreign import name :: forall eff. HTMLKeygenElement -> Eff (dom :: DOM | eff) String
foreign import setName :: forall eff. String -> HTMLKeygenElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLKeygenElement -> Eff (dom :: DOM | eff) String

foreign import willValidate :: forall eff. HTMLKeygenElement -> Eff (dom :: DOM | eff) Boolean

foreign import validity :: forall eff. HTMLKeygenElement -> Eff (dom :: DOM | eff) ValidityState

foreign import validationMessage :: forall eff. HTMLKeygenElement -> Eff (dom :: DOM | eff) String

foreign import checkValidity :: forall eff. HTMLKeygenElement -> Eff (dom :: DOM | eff) Boolean

foreign import setCustomValidity :: forall eff. String -> HTMLKeygenElement -> Eff (dom :: DOM | eff) Unit

foreign import labels :: forall eff. HTMLKeygenElement -> Eff (dom :: DOM | eff) NodeList
