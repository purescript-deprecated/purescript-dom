module DOM.Node.NonElementParentNode
  ( getElementById
  ) where

import Prelude
import Control.Monad.Effect (Effect)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import DOM.Node.Types (Element, NonElementParentNode, ElementId)

-- | The first element within node's descendants with a matching ID, or null if
-- | no such element exists.
foreign import _getElementById :: ElementId -> NonElementParentNode -> Effect (Nullable Element)

getElementById :: ElementId -> NonElementParentNode -> Effect (Maybe Element)
getElementById eid = map toMaybe <<< _getElementById eid
