module DOM.HTML.HTMLVideoElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLVideoElement)

foreign import width :: forall eff. HTMLVideoElement -> Eff (dom :: DOM | eff) Int
foreign import setWidth :: forall eff. Int -> HTMLVideoElement -> Eff (dom :: DOM | eff) Unit

foreign import height :: forall eff. HTMLVideoElement -> Eff (dom :: DOM | eff) Int
foreign import setHeight :: forall eff. Int -> HTMLVideoElement -> Eff (dom :: DOM | eff) Unit

foreign import videoWidth :: forall eff. HTMLVideoElement -> Eff (dom :: DOM | eff) Int
foreign import videoHeight :: forall eff. HTMLVideoElement -> Eff (dom :: DOM | eff) Int

foreign import poster :: forall eff. HTMLVideoElement -> Eff (dom :: DOM | eff) String
foreign import setPoster :: forall eff. String -> HTMLVideoElement -> Eff (dom :: DOM | eff) Unit
