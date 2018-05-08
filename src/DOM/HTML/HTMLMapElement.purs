module DOM.HTML.HTMLMapElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLMapElement)
import DOM.Node.Types (HTMLCollection)

foreign import name :: HTMLMapElement -> Effect String
foreign import setName :: String -> HTMLMapElement -> Effect Unit

foreign import areas :: HTMLMapElement -> Effect HTMLCollection

foreign import images :: HTMLMapElement -> Effect HTMLCollection
