module DOM.Node.NonDocumentTypeChildNode
  ( previousElementSibling
  , nextElementSibling
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import DOM (DOM)
import DOM.Node.Types (Element, NonDocumentTypeChildNode)

-- | The previous sibling that is an element, or Nothing if no such element exists.
previousElementSibling :: forall eff. NonDocumentTypeChildNode -> Eff (dom :: DOM | eff) (Maybe Element)
previousElementSibling = map toMaybe <<< _previousElementSibling

foreign import _previousElementSibling :: forall eff. NonDocumentTypeChildNode -> Eff (dom :: DOM | eff) (Nullable Element)

-- | The next sibling that is an element, or Nothing if no such element exists.
nextElementSibling :: forall eff. NonDocumentTypeChildNode -> Eff (dom :: DOM | eff) (Maybe Element)
nextElementSibling = map toMaybe <<< _nextElementSibling

foreign import _nextElementSibling :: forall eff. NonDocumentTypeChildNode -> Eff (dom :: DOM | eff) (Nullable Element)
