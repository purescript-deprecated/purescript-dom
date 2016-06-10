module DOM.HTML.HTMLButtonElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import Data.Nullable (Nullable)

import DOM (DOM)
import DOM.Node.Types (NodeList)
import DOM.HTML.Types (HTMLButtonElement, HTMLFormElement, ValidityState)

foreign import autofocus :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) Boolean
foreign import setAutofocus :: forall eff. Boolean -> HTMLButtonElement -> Eff (dom :: DOM | eff) Unit

foreign import disabled :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDisabled :: forall eff. Boolean -> HTMLButtonElement -> Eff (dom :: DOM | eff) Unit

foreign import form :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) (Nullable HTMLFormElement)

foreign import formAction :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) String
foreign import setFormAction :: forall eff. String -> HTMLButtonElement -> Eff (dom :: DOM | eff) Unit

foreign import formEnctype :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) String
foreign import setFormEnctype :: forall eff. String -> HTMLButtonElement -> Eff (dom :: DOM | eff) Unit

foreign import formMethod :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) String
foreign import setFormMethod :: forall eff. String -> HTMLButtonElement -> Eff (dom :: DOM | eff) Unit

foreign import formNoValidate :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) Boolean
foreign import setFormNoValidate :: forall eff. Boolean -> HTMLButtonElement -> Eff (dom :: DOM | eff) Unit

foreign import formTarget :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) String
foreign import setFormTarget :: forall eff. String -> HTMLButtonElement -> Eff (dom :: DOM | eff) Unit

foreign import name :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) String
foreign import setName :: forall eff. String -> HTMLButtonElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) String
foreign import setType :: forall eff. String -> HTMLButtonElement -> Eff (dom :: DOM | eff) Unit

foreign import value :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) String
foreign import setValue :: forall eff. String -> HTMLButtonElement -> Eff (dom :: DOM | eff) Unit

foreign import willValidate :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) Boolean

foreign import validity :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) ValidityState

foreign import validationMessage :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) String

foreign import checkValidity :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) Boolean

foreign import setCustomValidity :: forall eff. String -> HTMLButtonElement -> Eff (dom :: DOM | eff) Unit

foreign import labels :: forall eff. HTMLButtonElement -> Eff (dom :: DOM | eff) NodeList
