module DOM.WebStorage.Event.StorageEvent
  ( key
  , oldValue
  , newValue
  , url
  , storageArea
  , module DOM.WebStorage.Event.Types
  , module DOM.WebStorage.Types
  ) where

import Prelude

import DOM.WebStorage.Types (Storage)
import DOM.WebStorage.Event.Types (StorageEvent)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

foreign import _key :: StorageEvent -> Nullable String

key :: StorageEvent -> Maybe String
key = toMaybe <<< _key

foreign import _oldValue :: StorageEvent -> Nullable String

oldValue :: StorageEvent -> Maybe String
oldValue = toMaybe <<< _oldValue

foreign import _newValue :: StorageEvent -> Nullable String

newValue :: StorageEvent -> Maybe String
newValue = toMaybe <<< _newValue

foreign import url :: StorageEvent -> String

foreign import _storageArea :: StorageEvent -> Nullable Storage

storageArea :: StorageEvent -> Maybe Storage
storageArea = toMaybe <<< _storageArea
