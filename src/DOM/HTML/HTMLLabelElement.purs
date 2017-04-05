module DOM.HTML.HTMLLabelElement
  ( form
  , htmlFor
  , setHtmlFor
  , control
  ) where

import Prelude

import Control.Monad.Eff (Eff)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM (DOM)
import DOM.HTML.Types (HTMLLabelElement, HTMLFormElement, HTMLElement)

form :: forall eff. HTMLLabelElement -> Eff (dom :: DOM | eff) (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: forall eff. HTMLLabelElement -> Eff (dom :: DOM | eff) (Nullable HTMLFormElement)

foreign import htmlFor :: forall eff. HTMLLabelElement -> Eff (dom :: DOM | eff) String
foreign import setHtmlFor :: forall eff. String -> HTMLLabelElement -> Eff (dom :: DOM | eff) Unit

control :: forall eff. HTMLLabelElement -> Eff (dom :: DOM | eff) (Maybe HTMLElement)
control = map toMaybe <<< _control

foreign import _control :: forall eff. HTMLLabelElement -> Eff (dom :: DOM | eff) (Nullable HTMLElement)
