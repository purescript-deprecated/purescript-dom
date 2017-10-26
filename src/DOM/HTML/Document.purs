module DOM.HTML.Document
  ( body
  , readyState
  , module Exports
  ) where

import Prelude

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.HTML.Document.ReadyState (ReadyState(..)) as Exports
import DOM.HTML.Document.ReadyState (ReadyState, parseReadyState)
import DOM.HTML.Types (HTMLElement, HTMLDocument)
import Data.Maybe (Maybe, fromJust)
import Data.Nullable (Nullable, toMaybe)
import Partial.Unsafe (unsafePartial)

foreign import _body :: forall eff. HTMLDocument -> Eff (dom :: DOM | eff) (Nullable HTMLElement)

body :: forall eff. HTMLDocument -> Eff (dom :: DOM | eff) (Maybe HTMLElement)
body = map toMaybe <<< _body

foreign import _readyState :: forall eff. HTMLDocument -> Eff (dom :: DOM | eff) String

readyState :: forall eff. HTMLDocument -> Eff (dom :: DOM | eff) ReadyState
readyState = map (unsafePartial fromJust <<< parseReadyState) <<< _readyState
