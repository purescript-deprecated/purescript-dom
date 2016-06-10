module DOM.HTML.HTMLLegendElement where

import Control.Monad.Eff (Eff)
import Data.Nullable (Nullable)

import DOM (DOM)
import DOM.HTML.Types (HTMLLegendElement, HTMLFormElement)

foreign import form :: forall eff. HTMLLegendElement -> Eff (dom :: DOM | eff) (Nullable HTMLFormElement)
