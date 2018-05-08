module DOM.HTML.HTMLOListElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLOListElement)

foreign import reversed :: HTMLOListElement -> Effect Boolean
foreign import setReversed :: Boolean -> HTMLOListElement -> Effect Unit

foreign import start :: HTMLOListElement -> Effect Int
foreign import setStart :: Int -> HTMLOListElement -> Effect Unit

foreign import type_ :: HTMLOListElement -> Effect String
foreign import setType :: String -> HTMLOListElement -> Effect Unit
