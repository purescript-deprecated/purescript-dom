module DOM.HTML.Event.DataTransfer
  ( DataTransfer
  , files
  , types
  , getData
  , setData
  , DropEffect(..)
  , dropEffect
  , setDropEffect
  ) where

import Prelude

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.File.Types (FileList)
import Data.Maybe (Maybe)
import Data.MediaType (MediaType(..))
import Data.Nullable (Nullable, toMaybe)
import Partial.Unsafe (unsafePartialBecause)

foreign import data DataTransfer :: Type

-- | Contains a list of all the local files available on the data transfer.
-- | Empty if the drag operation doesn't involve dragging files.
-- |
-- | It's possible that a drag operation may have null files, instead of an
-- | empty file list. In these cases Nothing is returned.
files :: DataTransfer -> Maybe FileList
files = toMaybe <$> _files

foreign import _files :: DataTransfer -> Nullable FileList

-- | Returns an array of data formats used in the drag operation.
-- | If the drag operation included no data, then the array is empty.
foreign import types :: DataTransfer -> Array String

foreign import getDataImpl
  :: forall eff
   . String
  -> DataTransfer
  -> Eff (dom :: DOM | eff) String

-- | Retrieves the data for a given media type, or an empty string if data for
-- | that type does not exist or the data transfer object contains no data.
getData
  :: forall eff. MediaType -> DataTransfer -> Eff (dom :: DOM | eff) String
getData (MediaType format) dt = getDataImpl format dt

foreign import setDataImpl
  :: forall eff
   . String
  -> String
  -> DataTransfer
  -> Eff (dom :: DOM | eff) Unit

-- | Sets the data transfer object's data for a given media format.
-- |
-- | Example:
-- |
-- |     setData textPlain "Foo" dataTransfer
setData
  :: forall eff
   . MediaType
  -> String
  -> DataTransfer
  -> Eff (dom :: DOM | eff) Unit
setData (MediaType format) dat dt = setDataImpl format dat dt

foreign import dropEffectImpl :: forall eff. DataTransfer -> Eff (dom :: DOM | eff) String

data DropEffect = None | Copy | Move | Link

--| Gets the data transfer object's drop effect.
dropEffect :: forall eff. DataTransfer -> Eff (dom :: DOM | eff) DropEffect
dropEffect dt = do
  de <- dropEffectImpl dt
  pure $ unsafePartialBecause "No other values are possible https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/dropEffect" case de of
    "copy" -> Copy
    "move" -> Move
    "link" -> Link
    "none" -> None

foreign import setDropEffectImpl :: forall eff. String -> DataTransfer -> Eff (dom :: DOM | eff) Unit

--| Sets the data transfer object's drop effect.
setDropEffect :: forall eff. DropEffect -> DataTransfer -> Eff (dom :: DOM | eff) Unit
setDropEffect de = setDropEffectImpl case de of
  Copy -> "copy"
  None -> "none"
  Move -> "move"
  Link -> "link"
