module DOM.Node.NodeList
  ( length
  , item
  , toArray
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import DOM (DOM)
import DOM.Node.Types (Node, NodeList)

-- | The number of items in a NodeList.
foreign import length :: forall eff. NodeList -> Eff (dom :: DOM | eff) Int

-- | The elements of a NodeList represented in an array.
foreign import toArray :: forall eff. NodeList -> Eff (dom :: DOM | eff) (Array Node)

-- | The item in a NodeList at the specified index, or Nothing if no such node
-- | exists.
item :: forall eff. Int -> NodeList -> Eff (dom :: DOM | eff) (Maybe Node)
item i = map toMaybe <<< _item i

foreign import _item :: forall eff. Int -> NodeList -> Eff (dom :: DOM | eff) (Nullable Node)
