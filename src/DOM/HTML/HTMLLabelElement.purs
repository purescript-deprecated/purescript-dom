module DOM.HTML.HTMLLabelElement
  ( form
  , htmlFor
  , setHtmlFor
  , control
  ) where

import Prelude

import Control.Monad.Effect (Effect)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM.HTML.Types (HTMLLabelElement, HTMLFormElement, HTMLElement)

form :: HTMLLabelElement -> Effect (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: HTMLLabelElement -> Effect (Nullable HTMLFormElement)

foreign import htmlFor :: HTMLLabelElement -> Effect String
foreign import setHtmlFor :: String -> HTMLLabelElement -> Effect Unit

control :: HTMLLabelElement -> Effect (Maybe HTMLElement)
control = map toMaybe <<< _control

foreign import _control :: HTMLLabelElement -> Effect (Nullable HTMLElement)
