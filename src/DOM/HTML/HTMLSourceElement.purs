module DOM.HTML.HTMLSourceElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLSourceElement)

-- [NamedConstructor=Audio(optional DOMString src)]

foreign import src :: HTMLSourceElement -> Effect String
foreign import setSrc :: String -> HTMLSourceElement -> Effect Unit

foreign import type_ :: HTMLSourceElement -> Effect String
foreign import setType :: String -> HTMLSourceElement -> Effect Unit

foreign import media :: HTMLSourceElement -> Effect String
foreign import setMedia :: String -> HTMLSourceElement -> Effect Unit

