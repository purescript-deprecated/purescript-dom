module DOM.Node.MutationObserver
  ( MutationObserver
  , MutationObserverInitFields
  , mutationObserver
  , observe
  , disconnect
  , takeRecords
  ) where

import Prelude

import Control.Monad.Effect (Effect)
import DOM.Node.MutationRecord (MutationRecord)
import DOM.Node.Types (Node)

foreign import data MutationObserver :: Type

type MutationObserverInitFields =
  ( childList :: Boolean
  , attributes :: Boolean
  , characterData :: Boolean
  , subtree :: Boolean
  , attributeOldValue :: Boolean
  , characterDataOldValue :: Boolean
  , attributeFilter :: Array String
  )

foreign import mutationObserver
  :: (MutationRecord -> MutationObserver -> Effect Unit)
  -> Effect MutationObserver

foreign import _observe :: forall r. Node -> Record r -> MutationObserver -> Effect Unit

observe
  :: forall r rx
   . Union r rx MutationObserverInitFields
  => Node
  -> Record r
  -> MutationObserver
  -> Effect Unit
observe = _observe

foreign import disconnect :: MutationObserver -> Effect Unit

foreign import takeRecords :: MutationObserver -> Effect (Array MutationRecord)
