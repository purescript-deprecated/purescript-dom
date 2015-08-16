module DOM.Node.NonElementParentNode where

import Control.Monad.Eff (Eff())

import Data.Nullable (Nullable())

import DOM
import DOM.Node.Types

-- | The previous sibling that is an element, or null if no such element exists.
foreign import previousElementSibling :: forall eff. NonElementParentNode -> Eff (dom :: DOM | eff) (Nullable Element)

-- | The next sibling that is an element, or null if no such element exists.
foreign import nextElementSibling :: forall eff. NonElementParentNode -> Eff (dom :: DOM | eff) (Nullable Element)
