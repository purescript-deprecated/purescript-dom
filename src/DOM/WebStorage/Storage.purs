module DOM.WebStorage.Storage
  ( length
  , key
  , getItem
  , setItem
  , removeItem
  , clear
  , module DOM.WebStorage.Types
  ) where

import Prelude

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.WebStorage.Types (Storage)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

foreign import length :: forall eff. Storage -> Eff (dom :: DOM | eff) Int

foreign import _key :: forall eff. Int -> Storage -> Eff (dom :: DOM | eff) (Nullable String)

key :: forall eff. Int -> Storage -> Eff (dom :: DOM | eff) (Maybe String)
key i = map toMaybe <<< _key i

foreign import _getItem :: forall eff. String -> Storage -> Eff (dom :: DOM | eff) (Nullable String)

getItem :: forall eff. String -> Storage -> Eff (dom :: DOM | eff) (Maybe String)
getItem s = map toMaybe <<< _getItem s

foreign import setItem :: forall eff. String -> String -> Storage -> Eff (dom :: DOM | eff) Unit

foreign import removeItem :: forall eff. String -> Storage -> Eff (dom :: DOM | eff) Unit

foreign import clear :: forall eff. Storage -> Eff (dom :: DOM | eff) Unit
