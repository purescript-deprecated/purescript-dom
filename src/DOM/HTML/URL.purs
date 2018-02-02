module DOM.HTML.URL
  ( createObjectURL
  , revokeObjectURL
  ) where

import Control.Monad.Effect (Effect)
import DOM.File.Types (File)
import DOM.HTML.Types (URL)
import Data.Unit (Unit)

foreign import createObjectURL :: File -> URL -> Effect String

foreign import revokeObjectURL :: String -> URL -> Effect Unit
