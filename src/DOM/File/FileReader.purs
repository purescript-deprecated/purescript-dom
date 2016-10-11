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
import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.File.FileReader.ReadyState (toEnumReadyState, ReadyState)
import DOM.File.Types (Blob, FileReader)
import Data.Foreign (Foreign)
import Data.Maybe (fromJust)
import Partial.Unsafe (unsafePartial)

foreign import fileReader :: forall eff. Eff (dom :: DOM | eff) FileReader

foreign import error :: forall eff. FileReader -> Eff (dom :: DOM | eff) Foreign

foreign import readyStateImpl :: forall eff. FileReader -> Eff (dom :: DOM | eff) Int

readyState :: forall eff. FileReader -> Eff (dom :: DOM | eff) ReadyState
readyState fr = do
  rs <- readyStateImpl fr
  pure $ unsafePartial $ fromJust $ toEnumReadyState rs

foreign import result :: forall eff. FileReader -> Eff (dom :: DOM | eff) Foreign

foreign import abort :: FileReader -> forall eff. Eff (dom :: DOM | eff) Unit

foreign import readAsText :: Blob -> FileReader -> forall eff. Eff (dom :: DOM | eff) Unit

foreign import readAsArrayBuffer :: Blob -> FileReader -> forall eff. Eff (dom :: DOM | eff) Unit

foreign import readAsDataURL :: Blob -> FileReader -> forall eff. Eff (dom :: DOM | eff) Unit
