module DOM.File.FileList
  ( length
  , item
  ) where

import Prelude
import Data.Nullable (Nullable, toMaybe)
import Data.Maybe (Maybe)
import DOM.File.Types (FileList, File)

-- | Number of files in the `FileList` object.
foreign import length :: FileList -> Int

foreign import _item :: Int -> FileList -> Nullable File

-- | Get `File` at the certain position
item :: Int -> FileList -> Maybe File
item i = toMaybe <<< _item i
