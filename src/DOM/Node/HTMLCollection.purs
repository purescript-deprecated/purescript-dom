module DOM.Node.HTMLCollection where

import Prelude

import Control.Monad.Eff (Eff())

import Data.Nullable (Nullable())

import DOM
import DOM.Node.Types

-- | The number of elements in a HTMLCollection.
foreign import length :: forall eff. HTMLCollection -> Eff (dom :: DOM | eff) Int

-- | The element in a HTMLCollection at the specified index, or null if no such
-- | element exists.
foreign import item :: forall eff. Int -> HTMLCollection -> Eff (dom :: DOM | eff) (Nullable Element)

-- | The first element with the specified name or ID in a HTMLCollection, or
-- | null if no such element exists.
foreign import namedItem :: forall eff. ElementId -> HTMLCollection -> Eff (dom :: DOM | eff) (Nullable Element)
