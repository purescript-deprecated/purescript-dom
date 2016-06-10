module DOM.Node.NodeList where

import Control.Monad.Eff (Eff)
import Data.Nullable (Nullable)
import DOM (DOM)
import DOM.Node.Types (Node, NodeList)

-- | The number of items in a NodeList.
foreign import length :: forall eff. NodeList -> Eff (dom :: DOM | eff) Int

-- | The item in a NodeList at the specified index, or null if no such node
-- | exists.
foreign import item :: forall eff. Int -> NodeList -> Eff (dom :: DOM | eff) (Nullable Node)
