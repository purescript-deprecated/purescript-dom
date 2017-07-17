module DOM.Node.HTMLCollection
  ( length
  , item
  , namedItem
  , toArray
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import DOM (DOM)
import DOM.Node.Types (Element, HTMLCollection, ElementId)

-- | The number of elements in a HTMLCollection.
foreign import length :: forall eff. HTMLCollection -> Eff (dom :: DOM | eff) Int

-- | The elements of an HTMLCollection represented in an array.
foreign import toArray :: forall eff. HTMLCollection -> Eff (dom :: DOM | eff) (Array Element)

-- | The element in a HTMLCollection at the specified index, or Nothing if no such
-- | element exists.
item :: forall eff. Int -> HTMLCollection -> Eff (dom :: DOM | eff) (Maybe Element)
item i = map toMaybe <<< _item i

foreign import _item :: forall eff. Int -> HTMLCollection -> Eff (dom :: DOM | eff) (Nullable Element)

-- | The first element with the specified name or ID in a HTMLCollection, or
-- | Nothing if no such element exists.
namedItem :: forall eff. ElementId -> HTMLCollection -> Eff (dom :: DOM | eff) (Maybe Element)
namedItem id = map toMaybe <<< _namedItem id

foreign import _namedItem :: forall eff. ElementId -> HTMLCollection -> Eff (dom :: DOM | eff) (Nullable Element)
