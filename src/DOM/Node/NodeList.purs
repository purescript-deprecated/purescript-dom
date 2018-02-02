module DOM.Node.NodeList
  ( length
  , item
  , toArray
  ) where

import Prelude
import Control.Monad.Effect (Effect)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import DOM.Node.Types (Node, NodeList)

-- | The number of items in a NodeList.
foreign import length :: NodeList -> Effect Int

-- | The elements of a NodeList represented in an array.
foreign import toArray :: NodeList -> Effect (Array Node)

-- | The item in a NodeList at the specified index, or Nothing if no such node
-- | exists.
item :: Int -> NodeList -> Effect (Maybe Node)
item i = map toMaybe <<< _item i

foreign import _item :: Int -> NodeList -> Effect (Nullable Node)
