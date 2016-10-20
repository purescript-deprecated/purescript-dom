module DOM.HTML.Event.DragEvent.DataTransfer
  ( DataTransfer
  , files
  , types
  ) where

import DOM.File.Types (FileList)

foreign import data DataTransfer :: *

-- | Contains a list of all the local files available on the data transfer.
-- | Empty if the drag operation doesn't involve dragging files.
foreign import files :: DataTransfer -> FileList

-- | Returns an array of data formats used in the drag operation.
-- | If the drag operation included no data, then the array is empty.
foreign import types :: DataTransfer -> Array String
