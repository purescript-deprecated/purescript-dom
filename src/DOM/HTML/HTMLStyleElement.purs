module DOM.HTML.HTMLStyleElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLStyleElement)

foreign import disabled :: HTMLStyleElement -> Effect Boolean
foreign import setDisabled :: Boolean -> HTMLStyleElement -> Effect Unit

foreign import media :: HTMLStyleElement -> Effect String
foreign import setMedia :: String -> HTMLStyleElement -> Effect Unit

foreign import type_ :: HTMLStyleElement -> Effect String
foreign import setType :: String -> HTMLStyleElement -> Effect Unit
