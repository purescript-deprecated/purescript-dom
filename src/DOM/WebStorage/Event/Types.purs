module DOM.WebStorage.Event.Types where

import Data.Foreign (Foreign, F, unsafeReadTagged)

import DOM.Event.Types (Event)

import Unsafe.Coerce as U

foreign import data StorageEvent :: Type

readStorageEvent :: Foreign -> F StorageEvent
readStorageEvent = unsafeReadTagged "StorageEvent"

storageEventToEvent :: StorageEvent -> Event
storageEventToEvent = U.unsafeCoerce
