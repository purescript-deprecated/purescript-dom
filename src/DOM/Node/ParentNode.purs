module DOM.Node.ParentNode where

import Control.Monad.Eff (Eff)

import Data.Nullable (Nullable)

import DOM (DOM)
import DOM.Node.Types (NodeList, ParentNode, Element, HTMLCollection)

-- | The child elements for the node.
foreign import children :: forall eff. ParentNode -> Eff (dom :: DOM | eff) HTMLCollection

-- | The first child that is an element, or null if no such element exists.
foreign import firstElementChild :: forall eff. ParentNode -> Eff (dom :: DOM | eff) (Nullable Element)

-- | The last child that is an element, or null if no such element exists.
foreign import lastElementChild :: forall eff. ParentNode -> Eff (dom :: DOM | eff) (Nullable Element)

-- | The number of child elements.
foreign import childElementCount :: forall eff. ParentNode -> Eff (dom :: DOM | eff) Int

-- | Finds the first child that is an element that matches the selector(s), or
-- | null if no such element exists.
foreign import querySelector :: forall eff. String -> ParentNode -> Eff (dom :: DOM | eff) (Nullable Element)

-- | Finds all the child elements that matches the selector(s).
foreign import querySelectorAll :: forall eff. String -> ParentNode -> Eff (dom :: DOM | eff) NodeList
