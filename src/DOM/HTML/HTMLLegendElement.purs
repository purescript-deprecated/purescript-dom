module DOM.HTML.HTMLLegendElement
  ( form
  ) where

import Prelude

import Control.Monad.Effect (Effect)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM.HTML.Types (HTMLLegendElement, HTMLFormElement)

form :: HTMLLegendElement -> Effect (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: HTMLLegendElement -> Effect (Nullable HTMLFormElement)
