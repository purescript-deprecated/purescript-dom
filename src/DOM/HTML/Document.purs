module DOM.HTML.Document
  ( body
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import DOM (DOM)
import DOM.HTML.Types (HTMLElement, HTMLDocument)

foreign import _body :: forall eff. HTMLDocument -> Eff (dom :: DOM | eff) (Nullable HTMLElement)

body :: forall eff. HTMLDocument -> Eff (dom :: DOM | eff) (Maybe HTMLElement)
body = map toMaybe <<< _body
