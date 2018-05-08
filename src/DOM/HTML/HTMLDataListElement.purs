module DOM.HTML.HTMLDataListElement where

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLDataListElement)
import DOM.Node.Types (HTMLCollection)

foreign import options :: HTMLDataListElement -> Effect HTMLCollection
