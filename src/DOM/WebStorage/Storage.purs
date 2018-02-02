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

import Control.Monad.Effect (Effect)

import DOM.WebStorage.Types (Storage)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

foreign import length :: Storage -> Effect Int

foreign import _key :: Int -> Storage -> Effect (Nullable String)

key :: Int -> Storage -> Effect (Maybe String)
key i = map toMaybe <<< _key i

foreign import _getItem :: String -> Storage -> Effect (Nullable String)

getItem :: String -> Storage -> Effect (Maybe String)
getItem s = map toMaybe <<< _getItem s

foreign import setItem :: String -> String -> Storage -> Effect Unit

foreign import removeItem :: String -> Storage -> Effect Unit

foreign import clear :: Storage -> Effect Unit
