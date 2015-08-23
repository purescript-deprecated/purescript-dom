module DOM.Node.NonElementParentNode where

import Control.Monad.Eff (Eff())

import Data.Nullable (Nullable())

import DOM
import DOM.Node.Types

-- | The first element within node's descendants with a matching ID, or null if
-- | no such element exists.
foreign import getElementById :: forall eff. ElementId -> NonElementParentNode -> Eff (dom :: DOM | eff) (Nullable Element)
