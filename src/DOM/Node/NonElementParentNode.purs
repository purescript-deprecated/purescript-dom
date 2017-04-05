module DOM.Node.NonElementParentNode
  ( getElementById
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import DOM (DOM)
import DOM.Node.Types (Element, NonElementParentNode, ElementId)

-- | The first element within node's descendants with a matching ID, or null if
-- | no such element exists.
foreign import _getElementById :: forall eff. ElementId -> NonElementParentNode -> Eff (dom :: DOM | eff) (Nullable Element)

getElementById :: forall eff. ElementId -> NonElementParentNode -> Eff (dom :: DOM | eff) (Maybe Element)
getElementById eid = map toMaybe <<< _getElementById eid
