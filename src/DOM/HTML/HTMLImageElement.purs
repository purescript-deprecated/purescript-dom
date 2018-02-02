module DOM.HTML.HTMLImageElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLImageElement)

foreign import create :: Unit -> Effect HTMLImageElement
foreign import create' :: Int -> Int -> Effect HTMLImageElement

foreign import alt :: HTMLImageElement -> Effect String
foreign import setAlt :: String -> HTMLImageElement -> Effect Unit

foreign import src :: HTMLImageElement -> Effect String
foreign import setSrc :: String -> HTMLImageElement -> Effect Unit

foreign import crossOrigin :: HTMLImageElement -> Effect String
foreign import setCrossOrigin :: String -> HTMLImageElement -> Effect Unit

foreign import useMap :: HTMLImageElement -> Effect String
foreign import setUseMap :: String -> HTMLImageElement -> Effect Unit

foreign import isMap :: HTMLImageElement -> Effect Boolean
foreign import setIsMap :: Boolean -> HTMLImageElement -> Effect Unit

foreign import width :: HTMLImageElement -> Effect Int
foreign import setWidth :: Int -> HTMLImageElement -> Effect Unit

foreign import height :: HTMLImageElement -> Effect Int
foreign import setHeight :: Int -> HTMLImageElement -> Effect Unit

foreign import naturalWidth :: HTMLImageElement -> Effect Int
foreign import naturalHeight :: HTMLImageElement -> Effect Int
foreign import complete :: HTMLImageElement -> Effect Boolean
