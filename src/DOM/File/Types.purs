module DOM.File.Types where

import DOM.Event.Types (EventTarget)
import Data.Foreign (Foreign, F, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)

foreign import data Blob :: Type
foreign import data BlobURL :: Type
foreign import data File :: Type
foreign import data FileList :: Type
foreign import data FileReader :: Type
foreign import data FileReaderSync :: Type

fileToBlob :: File -> Blob
fileToBlob = unsafeCoerce

fileReaderToEventTarget :: FileReader -> EventTarget
fileReaderToEventTarget = unsafeCoerce

readFileList :: Foreign -> F FileList
readFileList = unsafeReadTagged "FileList"
