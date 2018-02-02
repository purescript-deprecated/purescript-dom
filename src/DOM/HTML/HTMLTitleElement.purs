module DOM.HTML.HTMLTitleElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLTitleElement)

foreign import text :: HTMLTitleElement -> Effect String
foreign import setText :: String -> HTMLTitleElement -> Effect Unit
