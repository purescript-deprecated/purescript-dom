module DOM.HTML.HTMLLegendElement
  ( form
  ) where

import Prelude

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM (DOM)
import DOM.HTML.Types (HTMLLegendElement, HTMLFormElement)

form :: forall eff. HTMLLegendElement -> Eff (dom :: DOM | eff) (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: forall eff. HTMLLegendElement -> Eff (dom :: DOM | eff) (Nullable HTMLFormElement)
