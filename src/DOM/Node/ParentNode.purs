module DOM.Node.ParentNode
  ( children
  , firstElementChild
  , lastElementChild
  , childElementCount
  , QuerySelector(..)
  , querySelector
  , querySelectorAll
  ) where

import Prelude

import Control.Monad.Eff (Eff)

import Data.Newtype (class Newtype)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM (DOM)
import DOM.Node.Types (NodeList, ParentNode, Element, HTMLCollection)

-- | The child elements for the node.
foreign import children :: forall eff. ParentNode -> Eff (dom :: DOM | eff) HTMLCollection

-- | The first child that is an element, or Nothing if no such element exists.
firstElementChild :: forall eff. ParentNode -> Eff (dom :: DOM | eff) (Maybe Element)
firstElementChild = map toMaybe <<< _firstElementChild

foreign import _firstElementChild :: forall eff. ParentNode -> Eff (dom :: DOM | eff) (Nullable Element)

-- | The last child that is an element, or Nothing if no such element exists.
lastElementChild :: forall eff. ParentNode -> Eff (dom :: DOM | eff) (Maybe Element)
lastElementChild = map toMaybe <<< _lastElementChild

foreign import _lastElementChild :: forall eff. ParentNode -> Eff (dom :: DOM | eff) (Nullable Element)

-- | The number of child elements.
foreign import childElementCount :: forall eff. ParentNode -> Eff (dom :: DOM | eff) Int

newtype QuerySelector = QuerySelector String

derive newtype instance eqQuerySelector :: Eq QuerySelector
derive newtype instance ordQuerySelector :: Ord QuerySelector
derive instance newtypeQuerySelector :: Newtype QuerySelector _

-- | Finds the first child that is an element that matches the selector(s), or
-- | Nothing if no such element exists.
querySelector :: forall eff. QuerySelector -> ParentNode -> Eff (dom :: DOM | eff) (Maybe Element)
querySelector qs = map toMaybe <<< _querySelector qs

foreign import _querySelector :: forall eff. QuerySelector -> ParentNode -> Eff (dom :: DOM | eff) (Nullable Element)

-- | Finds all the child elements that matches the selector(s).
foreign import querySelectorAll :: forall eff. QuerySelector -> ParentNode -> Eff (dom :: DOM | eff) NodeList
