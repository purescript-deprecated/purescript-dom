module DOM.HTML.HTMLDataElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLDataElement)

foreign import value :: HTMLDataElement -> Effect String
foreign import setValue :: String -> HTMLDataElement -> Effect Unit
