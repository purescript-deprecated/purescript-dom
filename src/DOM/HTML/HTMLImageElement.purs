module DOM.HTML.HTMLImageElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLImageElement)

foreign import create :: forall eff. Unit -> Eff (dom :: DOM | eff) HTMLImageElement
foreign import create' :: forall eff. Int -> Int -> Eff (dom :: DOM | eff) HTMLImageElement

foreign import alt :: forall eff. HTMLImageElement -> Eff (dom :: DOM | eff) String
foreign import setAlt :: forall eff. String -> HTMLImageElement -> Eff (dom :: DOM | eff) Unit

foreign import src :: forall eff. HTMLImageElement -> Eff (dom :: DOM | eff) String
foreign import setSrc :: forall eff. String -> HTMLImageElement -> Eff (dom :: DOM | eff) Unit

foreign import crossOrigin :: forall eff. HTMLImageElement -> Eff (dom :: DOM | eff) String
foreign import setCrossOrigin :: forall eff. String -> HTMLImageElement -> Eff (dom :: DOM | eff) Unit

foreign import useMap :: forall eff. HTMLImageElement -> Eff (dom :: DOM | eff) String
foreign import setUseMap :: forall eff. String -> HTMLImageElement -> Eff (dom :: DOM | eff) Unit

foreign import isMap :: forall eff. HTMLImageElement -> Eff (dom :: DOM | eff) Boolean
foreign import setIsMap :: forall eff. Boolean -> HTMLImageElement -> Eff (dom :: DOM | eff) Unit

foreign import width :: forall eff. HTMLImageElement -> Eff (dom :: DOM | eff) Int
foreign import setWidth :: forall eff. Int -> HTMLImageElement -> Eff (dom :: DOM | eff) Unit

foreign import height :: forall eff. HTMLImageElement -> Eff (dom :: DOM | eff) Int
foreign import setHeight :: forall eff. Int -> HTMLImageElement -> Eff (dom :: DOM | eff) Unit

foreign import naturalWidth :: forall eff. HTMLImageElement -> Eff (dom :: DOM | eff) Int
foreign import naturalHeight :: forall eff. HTMLImageElement -> Eff (dom :: DOM | eff) Int
foreign import complete :: forall eff. HTMLImageElement -> Eff (dom :: DOM | eff) Boolean
