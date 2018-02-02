module DOM.HTML.Document
  ( body
  , readyState
  , activeElement
  , module Exports
  ) where

import Prelude

import Control.Monad.Effect (Effect)
import DOM.HTML.Document.ReadyState (ReadyState(..)) as Exports
import DOM.HTML.Document.ReadyState (ReadyState, parseReadyState)
import DOM.HTML.Types (HTMLElement, HTMLDocument)
import Data.Maybe (Maybe, fromJust)
import Data.Nullable (Nullable, toMaybe)
import Partial.Unsafe (unsafePartial)

foreign import _body :: HTMLDocument -> Effect (Nullable HTMLElement)

body :: HTMLDocument -> Effect (Maybe HTMLElement)
body = map toMaybe <<< _body

foreign import _readyState :: HTMLDocument -> Effect String

readyState :: HTMLDocument -> Effect ReadyState
readyState = map (unsafePartial fromJust <<< parseReadyState) <<< _readyState

foreign import _activeElement :: HTMLDocument -> Effect (Nullable HTMLElement)

activeElement :: HTMLDocument -> Effect (Maybe HTMLElement)
activeElement = map toMaybe <<< _activeElement
