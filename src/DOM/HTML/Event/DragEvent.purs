module DOM.HTML.Event.DragEvent
  ( dataTransfer
  ) where

import DOM.HTML.Event.DataTransfer (DataTransfer)
import DOM.HTML.Event.Types (DragEvent)

foreign import dataTransfer :: DragEvent -> DataTransfer
