module DOM.HTML.HTMLTrackElement where

import Prelude (Unit, (<<<), map)

import Control.Monad.Eff (Eff)

import Data.Enum (toEnum)
import Data.Maybe (fromJust)

import DOM (DOM)
import DOM.HTML.HTMLTrackElement.ReadyState (ReadyState)
import DOM.HTML.Types (HTMLTrackElement)

foreign import kind :: forall eff.
  HTMLTrackElement -> Eff (dom :: DOM | eff) String
foreign import setKind :: forall eff.
  String -> HTMLTrackElement -> Eff (dom :: DOM | eff) Unit

foreign import src :: forall eff.
  HTMLTrackElement -> Eff (dom :: DOM | eff) String
foreign import setSrc :: forall eff.
  String -> HTMLTrackElement -> Eff (dom :: DOM | eff) Unit

foreign import srclang :: forall eff.
  HTMLTrackElement -> Eff (dom :: DOM | eff) String
foreign import setSrclang :: forall eff.
  String -> HTMLTrackElement -> Eff (dom :: DOM | eff) Unit

foreign import label :: forall eff.
  HTMLTrackElement -> Eff (dom :: DOM | eff) String
foreign import setLabel :: forall eff.
  String -> HTMLTrackElement -> Eff (dom :: DOM | eff) Unit

foreign import default :: forall eff.
  HTMLTrackElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDefault :: forall eff.
  Boolean -> HTMLTrackElement -> Eff (dom :: DOM | eff) Unit

readyState :: forall eff.
  Partial =>
  HTMLTrackElement -> Eff (dom :: DOM | eff) ReadyState
readyState = map (fromJust <<< toEnum) <<< readyStateIndex

foreign import readyStateIndex :: forall eff. HTMLTrackElement -> Eff (dom :: DOM | eff) Int

--   readonly attribute TextTrack track;
