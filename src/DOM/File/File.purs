module DOM.File.File where

import Prelude
import DOM.File.Blob as Blob
import DOM.File.Types (File)
import Data.Maybe (Maybe)
import Data.MediaType (MediaType)
import Unsafe.Coerce (unsafeCoerce)

foreign import name :: File -> String

-- | (Inherited from `Blob`) `MediaType` of the data contained in the `Blob`.
-- | Returns `Nothing` if the `MediaType` is unknown.
type_ :: File -> Maybe MediaType
type_ = unsafeCoerce >>> Blob.type_

-- | (Inherited from `Blob`) The size (in bytes) of the data contained in the `File`.
size :: File -> Number
size = unsafeCoerce >>> Blob.size
