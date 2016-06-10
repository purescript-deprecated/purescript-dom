module DOM.File.Blob
  ( type_
  , size
  ) where

import Prelude ((==))
import Data.Maybe (Maybe(..))
import Data.MediaType (MediaType(..))
import DOM.File.Types (Blob)

foreign import typeImpl :: Blob -> String

-- | `MediaType` of the data contained in the `Blob`.
-- | Returns `Nothing` if the `MediaType` is unknown.
type_ :: Blob -> Maybe MediaType
type_ blob =
  let
    blobType = typeImpl blob
  in
    if blobType == ""
      then Nothing
      else Just (MediaType blobType)

-- | The size (in bytes) of the data contained in the `Blob`.
foreign import size :: Blob -> Number
