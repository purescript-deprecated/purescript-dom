module DOM.Node.ClassList
  ( add
  , contains
  , item
  , remove
  , toggle
  , toggleForce
  ) where

import Prelude

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.Node.Types (DOMTokenList)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

foreign import add :: forall eff. DOMTokenList -> String -> Eff (dom :: DOM | eff) Unit

foreign import remove :: forall eff. DOMTokenList -> String -> Eff (dom :: DOM | eff) Unit

foreign import contains :: forall eff. DOMTokenList -> String -> Eff (dom :: DOM | eff) Boolean

foreign import toggle :: forall eff. DOMTokenList -> String -> Eff (dom :: DOM | eff) Boolean

foreign import toggleForce :: forall eff. DOMTokenList -> String -> Boolean -> Eff (dom :: DOM | eff) Boolean

foreign import _item :: forall eff. DOMTokenList -> Int -> Eff (dom :: DOM | eff) (Nullable String)

item :: forall eff. DOMTokenList -> Int -> Eff (dom :: DOM | eff) (Maybe String)
item index = map toMaybe <<< _item index
