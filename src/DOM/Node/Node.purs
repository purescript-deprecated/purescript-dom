module DOM.Node.Node where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Enum (toEnum)
import Data.Nullable (Nullable)
import Data.Maybe (fromJust)
import DOM (DOM)
import DOM.Node.NodeType (NodeType)
import DOM.Node.Types (Node, NodeList, Element, Document)

-- | The type of a node.
nodeType :: Partial => Node -> NodeType
nodeType = fromJust <<< toEnum <<< nodeTypeIndex

-- | The numeric value for the type of a node.
foreign import nodeTypeIndex :: Node -> Int

-- | For elements this is the tag name, for document types this is the doctype
-- | name, for processing instructions this is the target, for all other nodes
-- | it is a string like `"#text"`, `"#comment", etc. depending on the node
-- | type.
foreign import nodeName :: Node -> String

-- | The node's base URL.
foreign import baseURI :: forall eff. Node -> Eff (dom :: DOM | eff) String

-- | The document the node belongs to, unless the node is a document in which
-- | case the value is null.
foreign import ownerDocument :: forall eff.
  Node -> Eff (dom :: DOM | eff) (Nullable Document)

-- | The parent node of the node.
foreign import parentNode :: forall eff.
  Node -> Eff (dom :: DOM | eff) (Nullable Node)

-- | The parent element of the node.
foreign import parentElement :: forall eff.
  Node -> Eff (dom :: DOM | eff) (Nullable Element)

-- | Indicates whether the node has any child nodes.
foreign import hasChildNodes :: forall eff.
  Node -> Eff (dom :: DOM | eff) Boolean

-- | The children of the node.
foreign import childNodes :: forall eff. Node -> Eff (dom :: DOM | eff) NodeList

-- | The first child of the node, or null if the node has no children.
foreign import firstChild :: forall eff.
  Node -> Eff (dom :: DOM | eff) (Nullable Node)

-- | The last child of the node, or null if the node has no children.
foreign import lastChild :: forall eff.
  Node -> Eff (dom :: DOM | eff) (Nullable Node)

-- | The previous sibling node, or null if there is no previous sibling.
foreign import previousSibling :: forall eff.
  Node -> Eff (dom :: DOM | eff) (Nullable Node)

-- | The next sibling node, or null if there is no next sibling.
foreign import nextSibling :: forall eff.
  Node -> Eff (dom :: DOM | eff) (Nullable Node)

-- | If the node type is text, comment, or processing instruction this is the
-- | node's data, or null in all other cases.
foreign import nodeValue :: forall eff. Node -> Eff (dom :: DOM | eff) String

-- | If the node type is text, comment, or processing instruction this allows
-- | the node's data to be changed, or has no effect in all other cases.
foreign import setNodeValue :: forall eff.
  String -> Node -> Eff (dom :: DOM | eff) Unit

-- | If the node type is document fragment, element, text, processing
-- | instruction, or comment this is the node's data, or null in all other
-- | cases.
foreign import textContent :: forall eff. Node -> Eff (dom :: DOM | eff) String

-- | If the node type is document fragment, element, text, processing
-- | instruction, or comment this allows the node's data to be changed, or has
-- | no effect in all other cases.
foreign import setTextContent :: forall eff.
  String -> Node -> Eff (dom :: DOM | eff) Unit

-- | Removes empty text nodes and then combines any remaining text nodes that
-- | are contiguous.
foreign import normalize :: forall eff. Node -> Eff (dom :: DOM | eff) Unit

-- | Clones the node without cloning the node's descendants.
foreign import clone :: forall eff. Node -> Eff (dom :: DOM | eff) Node

-- | Clones the node and its descendants.
foreign import deepClone :: forall eff. Node -> Eff (dom :: DOM | eff) Node

-- | Checks whether two nodes are equivalent.
foreign import isEqualNode :: forall eff.
  Node -> Node -> Eff (dom :: DOM | eff) Boolean

-- TODO: compareDocumentPosition that returns a semigroup or something instead of the bitmask value

-- | Compares the position of two nodes in the document.
foreign import compareDocumentPositionBits :: forall eff.
  Node -> Node -> Eff (dom :: DOM | eff) Int

-- | Checks whether the second node is contained within the first
foreign import contains :: forall eff.
  Node -> Node -> Eff (dom :: DOM | eff) Boolean

foreign import lookupPrefix :: forall eff.
  String -> Node -> Eff (dom :: DOM | eff) (Nullable String)
foreign import lookupNamespaceURI :: forall eff.
  String -> Node -> Eff (dom :: DOM | eff) (Nullable String)
foreign import isDefaultNamespace :: forall eff.
  String -> Node -> Eff (dom :: DOM | eff) Boolean

-- | Inserts the first node before the second as a child of the third node.
foreign import insertBefore :: forall eff.
  Node -> Node -> Node -> Eff (dom :: DOM | eff) Node

-- | Appends the first node to the child node list of the second node.
foreign import appendChild :: forall eff.
  Node -> Node -> Eff (dom :: DOM | eff) Node

-- | Uses the first node as a replacement for the second node in the children
-- | of the third node.
foreign import replaceChild :: forall eff.
  Node -> Node -> Node -> Eff (dom :: DOM | eff) Node

-- | Removes the first node from the children of the second node.
foreign import removeChild :: forall eff.
  Node -> Node -> Eff (dom :: DOM | eff) Node
