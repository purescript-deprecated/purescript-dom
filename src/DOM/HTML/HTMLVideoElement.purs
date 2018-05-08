module DOM.HTML.HTMLVideoElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLVideoElement)

foreign import width :: HTMLVideoElement -> Effect Int
foreign import setWidth :: Int -> HTMLVideoElement -> Effect Unit

foreign import height :: HTMLVideoElement -> Effect Int
foreign import setHeight :: Int -> HTMLVideoElement -> Effect Unit

foreign import videoWidth :: HTMLVideoElement -> Effect Int
foreign import videoHeight :: HTMLVideoElement -> Effect Int

foreign import poster :: HTMLVideoElement -> Effect String
foreign import setPoster :: String -> HTMLVideoElement -> Effect Unit
