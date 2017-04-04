module DOM where

import Control.Monad.Eff (kind Effect)

-- | Effect type for when the DOM is being manipulated or mutable values are
-- | being read from the DOM.
foreign import data DOM :: Effect
