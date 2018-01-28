module DOM.Node.MutationObserver
  ( MutationObserver
  , MutationObserverInitFields
  , mutationObserver
  , observe
  , disconnect
  , takeRecords
  ) where

import Prelude

import Control.Monad.Eff (Eff, kind Effect)
import DOM (DOM)
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
  :: forall eff
   . (MutationRecord -> MutationObserver -> Eff (dom :: DOM | eff) Unit)
  -> Eff (dom :: DOM | eff) MutationObserver

foreign import _observe :: forall eff r. Node -> Record r -> MutationObserver -> Eff (dom :: DOM | eff) Unit

observe
  :: forall eff r rx
   . Union r rx MutationObserverInitFields
  => Node
  -> Record r
  -> MutationObserver
  -> Eff (dom :: DOM | eff) Unit
observe = _observe

foreign import disconnect :: forall eff. MutationObserver -> Eff (dom :: DOM | eff) Unit

foreign import takeRecords :: forall eff. MutationObserver -> Eff (dom :: DOM | eff) (Array MutationRecord)
