module DOM.File.Types where

import DOM.Event.Types (EventTarget)
import Data.Foreign (Foreign, F, unsafeReadTagged)
import Data.Foreign.Class (class IsForeign)
import Unsafe.Coerce (unsafeCoerce)

foreign import data Blob :: *
foreign import data BlobURL :: *
foreign import data File :: *
foreign import data FileList :: *
foreign import data FileReader :: *
foreign import data FileReaderSync :: *

fileToBlob :: File -> Blob
fileToBlob = unsafeCoerce

fileReaderToEventTarget :: FileReader -> EventTarget
fileReaderToEventTarget = unsafeCoerce

readFileList :: Foreign -> F FileList
readFileList = unsafeReadTagged "FileList"

instance isForeignFileList :: IsForeign FileList where
  read = readFileList
