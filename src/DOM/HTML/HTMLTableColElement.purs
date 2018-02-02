module DOM.HTML.HTMLTableColElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLTableColElement)

foreign import span :: HTMLTableColElement -> Effect Int
foreign import setSpan :: Int -> HTMLTableColElement -> Effect Unit
