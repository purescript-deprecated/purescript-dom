module DOM.WebStorage.Storage
  ( module DOM.WebStorage.Storage
  , module DOM.WebStorage.Types
  ) where

import Prelude

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.WebStorage.Types (Storage)

import Data.Nullable (Nullable)

foreign import length :: forall eff. Storage -> Eff (dom :: DOM | eff) Int
foreign import key :: forall eff. Int -> Storage -> Eff (dom :: DOM | eff) (Nullable String)
foreign import getItem :: forall eff. String -> Storage -> Eff (dom :: DOM | eff) (Nullable String)
foreign import setItem :: forall eff. String -> String -> Storage -> Eff (dom :: DOM | eff) Unit
foreign import removeItem :: forall eff. String -> Storage -> Eff (dom :: DOM | eff) Unit
foreign import clear :: forall eff. Storage -> Eff (dom :: DOM | eff) Unit
