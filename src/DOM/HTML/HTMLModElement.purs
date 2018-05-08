module DOM.HTML.HTMLModElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLModElement)

foreign import cite :: HTMLModElement -> Effect String
foreign import setCite :: String -> HTMLModElement -> Effect Unit

foreign import dateTime :: HTMLModElement -> Effect String
foreign import setDateTime :: String -> HTMLModElement -> Effect Unit
