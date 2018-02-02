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

import Control.Monad.Effect (Effect)

import Data.Newtype (class Newtype)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM.Node.Types (NodeList, ParentNode, Element, HTMLCollection)

-- | The child elements for the node.
foreign import children :: ParentNode -> Effect HTMLCollection

-- | The first child that is an element, or Nothing if no such element exists.
firstElementChild :: ParentNode -> Effect (Maybe Element)
firstElementChild = map toMaybe <<< _firstElementChild

foreign import _firstElementChild :: ParentNode -> Effect (Nullable Element)

-- | The last child that is an element, or Nothing if no such element exists.
lastElementChild :: ParentNode -> Effect (Maybe Element)
lastElementChild = map toMaybe <<< _lastElementChild

foreign import _lastElementChild :: ParentNode -> Effect (Nullable Element)

-- | The number of child elements.
foreign import childElementCount :: ParentNode -> Effect Int

newtype QuerySelector = QuerySelector String

derive newtype instance eqQuerySelector :: Eq QuerySelector
derive newtype instance ordQuerySelector :: Ord QuerySelector
derive instance newtypeQuerySelector :: Newtype QuerySelector _

-- | Finds the first child that is an element that matches the selector(s), or
-- | Nothing if no such element exists.
querySelector :: QuerySelector -> ParentNode -> Effect (Maybe Element)
querySelector qs = map toMaybe <<< _querySelector qs

foreign import _querySelector :: QuerySelector -> ParentNode -> Effect (Nullable Element)

-- | Finds all the child elements that matches the selector(s).
foreign import querySelectorAll :: QuerySelector -> ParentNode -> Effect NodeList
