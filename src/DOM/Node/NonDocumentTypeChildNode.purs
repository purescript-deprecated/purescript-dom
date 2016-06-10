module DOM.Node.NonDocumentTypeChildNode where

import Control.Monad.Eff (Eff)
import Data.Nullable (Nullable)
import DOM (DOM)
import DOM.Node.Types (Element, NonDocumentTypeChildNode)

-- | The previous sibling that is an element, or null if no such element exists.
foreign import previousElementSibling :: forall eff. NonDocumentTypeChildNode -> Eff (dom :: DOM | eff) (Nullable Element)

-- | The next sibling that is an element, or null if no such element exists.
foreign import nextElementSibling :: forall eff. NonDocumentTypeChildNode -> Eff (dom :: DOM | eff) (Nullable Element)

