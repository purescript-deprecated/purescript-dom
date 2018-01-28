module DOM.Node.MutationRecord
  ( MutationRecord
  , MutationRecordType(..)
  , typeString
  , type_
  , target
  , addedNodes
  , removedNodes
  , nextSibling
  , previousSibling
  , attributeName
  , attributeNamespace
  , oldValue
  ) where

import Prelude

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.Node.Types (Node, NodeList)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

foreign import data MutationRecord :: Type

data MutationRecordType
  = MutationRecordAttributes
  | MutationRecordCharacterData
  | MutationRecordChildList

foreign import typeString :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) String

type_ :: forall eff. Partial => MutationRecord -> Eff (dom :: DOM | eff) MutationRecordType
type_ = map stringToType <<< typeString
  where
  stringToType = case _ of
    "attributes" -> MutationRecordAttributes
    "characterData" -> MutationRecordCharacterData
    "childList" -> MutationRecordChildList

foreign import target :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) Node

foreign import addedNodes :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) NodeList

foreign import removedNodes :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) NodeList

foreign import _nextSibling :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) (Nullable Node)

nextSibling :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) (Maybe Node)
nextSibling = map toMaybe <<< _nextSibling

foreign import _previousSibling :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) (Nullable Node)

previousSibling :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) (Maybe Node)
previousSibling = map toMaybe <<< _previousSibling

foreign import _attributeName :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) (Nullable String)

attributeName :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) (Maybe String)
attributeName = map toMaybe <<< _attributeName

foreign import _attributeNamespace :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) (Nullable String)

attributeNamespace :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) (Maybe String)
attributeNamespace = map toMaybe <<< _attributeNamespace

foreign import _oldValue :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) (Nullable String)

oldValue :: forall eff. MutationRecord -> Eff (dom :: DOM | eff) (Maybe String)
oldValue = map toMaybe <<< _oldValue
