module DOM.Event.DragEvent.DataTransfer where

import DOM.File.Types (FileList())

foreign import data DataTransfer :: *

-- | Contains a list of all the local files available on the data transfer.
-- | Empty if the drag operation doesn't involve dragging files.
foreign import files :: DataTransfer -> FileList
