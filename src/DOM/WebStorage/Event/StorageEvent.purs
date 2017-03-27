module DOM.WebStorage.Event.StorageEvent
  ( module DOM.WebStorage.Event.StorageEvent
  , module DOM.WebStorage.Event.Types
  , module DOM.WebStorage.Types
  ) where

import DOM.WebStorage.Types (Storage)
import DOM.WebStorage.Event.Types (StorageEvent)

import Data.Nullable (Nullable)

foreign import key :: StorageEvent -> Nullable String
foreign import oldValue :: StorageEvent -> Nullable String
foreign import newValue :: StorageEvent -> Nullable String
foreign import url :: StorageEvent -> String
foreign import storageArea :: StorageEvent -> Nullable Storage
