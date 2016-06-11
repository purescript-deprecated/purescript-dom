module DOM.File.FileList where

import Data.Nullable (Nullable)
import DOM.File.Types (FileList, File)

-- | Number of files in the `FileList` object.
foreign import length :: FileList -> Int

-- | Get `File` at the certain position
foreign import item :: Int -> FileList -> Nullable File
