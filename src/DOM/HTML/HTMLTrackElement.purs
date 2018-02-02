module DOM.HTML.HTMLTrackElement where

import Prelude (Unit, (<<<), map)

import Control.Monad.Effect (Effect)

import Data.Enum (toEnum)
import Data.Maybe (fromJust)

import DOM.HTML.HTMLTrackElement.ReadyState (ReadyState)
import DOM.HTML.Types (HTMLTrackElement)

foreign import kind :: HTMLTrackElement -> Effect String
foreign import setKind :: String -> HTMLTrackElement -> Effect Unit

foreign import src :: HTMLTrackElement -> Effect String
foreign import setSrc :: String -> HTMLTrackElement -> Effect Unit

foreign import srclang :: HTMLTrackElement -> Effect String
foreign import setSrclang :: String -> HTMLTrackElement -> Effect Unit

foreign import label :: HTMLTrackElement -> Effect String
foreign import setLabel :: String -> HTMLTrackElement -> Effect Unit

foreign import default :: HTMLTrackElement -> Effect Boolean
foreign import setDefault :: Boolean -> HTMLTrackElement -> Effect Unit

readyState :: Partial => HTMLTrackElement -> Effect ReadyState
readyState = map (fromJust <<< toEnum) <<< readyStateIndex

foreign import readyStateIndex :: HTMLTrackElement -> Effect Int

--   readonly attribute TextTrack track;
