module DOM.File.FileReader
  ( fileReader
  , readyState
  , result
  , abort
  , readAsText
  , readAsArrayBuffer
  , readAsDataURL
  ) where

import Prelude
import Control.Monad.Effect (Effect)
import DOM.File.FileReader.ReadyState (toEnumReadyState, ReadyState)
import DOM.File.Types (Blob, FileReader)
import Data.Foreign (Foreign)
import Data.Maybe (fromJust)
import Partial.Unsafe (unsafePartial)

foreign import fileReader :: Effect FileReader

foreign import error :: FileReader -> Effect Foreign

foreign import readyStateImpl :: FileReader -> Effect Int

readyState :: FileReader -> Effect ReadyState
readyState fr = do
  rs <- readyStateImpl fr
  pure $ unsafePartial $ fromJust $ toEnumReadyState rs

foreign import result :: FileReader -> Effect Foreign

foreign import abort :: FileReader -> Effect Unit

foreign import readAsText :: Blob -> FileReader -> Effect Unit

foreign import readAsArrayBuffer :: Blob -> FileReader -> Effect Unit

foreign import readAsDataURL :: Blob -> FileReader -> Effect Unit
