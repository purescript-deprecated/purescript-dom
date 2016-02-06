module DOM.File.Types where

import Unsafe.Coerce (unsafeCoerce)

foreign import data Blob :: *
foreign import data BlobURL :: *
foreign import data File :: *
foreign import data FileList :: *
foreign import data FileReader :: *
foreign import data FileReaderSync :: *

fileToBlob :: File -> Blob
fileToBlob = unsafeCoerce
