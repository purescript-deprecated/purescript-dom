module DOM.HTML.HTMLEmbedElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLEmbedElement)

foreign import src :: HTMLEmbedElement -> Effect String
foreign import setSrc :: String -> HTMLEmbedElement -> Effect Unit

foreign import type_ :: HTMLEmbedElement -> Effect String
foreign import setType :: String -> HTMLEmbedElement -> Effect Unit

foreign import width :: HTMLEmbedElement -> Effect String
foreign import setWidth :: String -> HTMLEmbedElement -> Effect Unit

foreign import height :: HTMLEmbedElement -> Effect String
foreign import setHeight :: String -> HTMLEmbedElement -> Effect Unit
