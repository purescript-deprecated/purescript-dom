module DOM.HTML.HTMLMediaElement where

import Prelude (Unit, map, (<<<))

import Control.Monad.Eff (Eff)

import Data.JSDate (JSDate)
import Data.Enum (toEnum)
import Data.Maybe (fromJust)

import DOM (DOM)
import DOM.HTML.HTMLMediaElement.CanPlayType (CanPlayType)
import DOM.HTML.HTMLMediaElement.NetworkState (NetworkState)
import DOM.HTML.HTMLMediaElement.ReadyState (ReadyState)
import DOM.HTML.Types (HTMLMediaElement)

--   readonly attribute MediaError? error;

foreign import src :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) String
foreign import setSrc :: forall eff. String -> HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

foreign import currentSrc :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) String

foreign import crossOrigin :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) String
foreign import setCrossOrigin :: forall eff. String -> HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

networkState :: forall eff. Partial => HTMLMediaElement -> Eff (dom :: DOM | eff) NetworkState
networkState = map (fromJust <<< toEnum) <<< readyStateIndex

foreign import networkStateIndex :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Int

foreign import preload :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) String
foreign import setPreload :: forall eff. String -> HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

--   readonly attribute TimeRanges buffered;

foreign import load :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

foreign import canPlayType :: forall eff. String -> HTMLMediaElement -> Eff (dom :: DOM | eff) CanPlayType

readyState :: forall eff. Partial => HTMLMediaElement -> Eff (dom :: DOM | eff) ReadyState
readyState = map (fromJust <<< toEnum) <<< readyStateIndex

foreign import readyStateIndex :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Int

foreign import seeking :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Boolean

foreign import currentTime :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Number
foreign import setCurrentTime :: forall eff. Number -> HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

foreign import duration :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Number

foreign import getStartDate :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) JSDate

foreign import paused :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Boolean

foreign import defaultPlaybackRate :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Number
foreign import setDefaultPlaybackRate :: forall eff. Number -> HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

foreign import playbackRate :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Number
foreign import setPlaybackRate :: forall eff. Number -> HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

--   readonly attribute TimeRanges played;
--   readonly attribute TimeRanges seekable;

foreign import ended :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Boolean

foreign import autoplay :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Boolean
foreign import setAutoplay :: forall eff. Boolean -> HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

foreign import loop :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Boolean
foreign import setLoop :: forall eff. Boolean -> HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

foreign import play :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

foreign import pause :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

foreign import mediaGroup :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) String
foreign import setMediaGroup :: forall eff. String -> HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

--            attribute MediaController? controller;

foreign import controls :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Boolean
foreign import setControls :: forall eff. Boolean -> HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

foreign import volume :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Number
foreign import setVolume :: forall eff. Number -> HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

foreign import muted :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Boolean
foreign import setMuted :: forall eff. Boolean -> HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

foreign import defaultMuted :: forall eff. HTMLMediaElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDefaultMuted :: forall eff. Boolean -> HTMLMediaElement -> Eff (dom :: DOM | eff) Unit

--   readonly attribute AudioTrackList audioTracks;
--   readonly attribute VideoTrackList videoTracks;
--   readonly attribute TextTrackList textTracks;
--   TextTrack addTextTrack(TextTrackKind kind, optional DOMString label = "", optional DOMString language = "");
