module DOM.HTML.URL
  ( createObjectURL
  , revokeObjectURL
  ) where

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.File.Types (File)
import DOM.HTML.Types (URL)
import Data.Unit (Unit)

foreign import createObjectURL :: forall eff. File -> URL -> Eff (dom :: DOM | eff) String

foreign import revokeObjectURL :: forall eff. String -> URL -> Eff (dom :: DOM | eff) Unit
