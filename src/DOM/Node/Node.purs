module DOM.Node.Node
  ( nodeType
  , nodeTypeIndex
  , nodeName
  , baseURI
  , ownerDocument
  , parentNode
  , parentElement
  , hasChildNodes
  , childNodes
  , firstChild
  , lastChild
  , previousSibling
  , nextSibling
  , nodeValue
  , setNodeValue
  , textContent
  , setTextContent
  , normalize
  , clone
  , deepClone
  , isEqualNode
  , compareDocumentPositionBits
  , contains
  , lookupPrefix
  , lookupNamespaceURI
  , isDefaultNamespace
  , insertBefore
  , appendChild
  , replaceChild
  , removeChild
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Enum (toEnum)
import Data.Maybe (Maybe, fromJust)
import Data.Nullable (Nullable, toMaybe)
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
-- | case the value is Nothing.
ownerDocument :: forall eff. Node -> Eff (dom :: DOM | eff) (Maybe Document)
ownerDocument = map toMaybe <<< _ownerDocument

foreign import _ownerDocument :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Document)

-- | The parent node of the node.
parentNode :: forall eff. Node -> Eff (dom :: DOM | eff) (Maybe Node)
parentNode = map toMaybe <<< _parentNode

foreign import _parentNode :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Node)

-- | The parent element of the node.
parentElement :: forall eff. Node -> Eff (dom :: DOM | eff) (Maybe Element)
parentElement = map toMaybe <<< _parentElement

foreign import _parentElement :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Element)

-- | Indicates whether the node has any child nodes.
foreign import hasChildNodes :: forall eff. Node -> Eff (dom :: DOM | eff) Boolean

-- | The children of the node.
foreign import childNodes :: forall eff. Node -> Eff (dom :: DOM | eff) NodeList

-- | The first child of the node, or Nothing if the node has no children.
firstChild :: forall eff. Node -> Eff (dom :: DOM | eff) (Maybe Node)
firstChild = map toMaybe <<< _firstChild

foreign import _firstChild :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Node)


-- | The last child of the node, or Nothing if the node has no children.
lastChild :: forall eff. Node -> Eff (dom :: DOM | eff) (Maybe Node)
lastChild = map toMaybe <<< _lastChild

foreign import _lastChild :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Node)

-- | The previous sibling node, or Nothing if there is no previous sibling.
previousSibling :: forall eff. Node -> Eff (dom :: DOM | eff) (Maybe Node)
previousSibling = map toMaybe <<< _previousSibling

foreign import _previousSibling :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Node)

-- | The next sibling node, or Nothing if there is no next sibling.
nextSibling :: forall eff. Node -> Eff (dom :: DOM | eff) (Maybe Node)
nextSibling = map toMaybe <<< _nextSibling

foreign import _nextSibling :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Node)

-- | If the node type is text, comment, or processing instruction this is the
-- | node's data, or null in all other cases.
foreign import nodeValue :: forall eff. Node -> Eff (dom :: DOM | eff) String

-- | If the node type is text, comment, or processing instruction this allows
-- | the node's data to be changed, or has no effect in all other cases.
foreign import setNodeValue :: forall eff. String -> Node -> Eff (dom :: DOM | eff) Unit

-- | If the node type is document fragment, element, text, processing
-- | instruction, or comment this is the node's data, or null in all other
-- | cases.
foreign import textContent :: forall eff. Node -> Eff (dom :: DOM | eff) String

-- | If the node type is document fragment, element, text, processing
-- | instruction, or comment this allows the node's data to be changed, or has
-- | no effect in all other cases.
foreign import setTextContent :: forall eff. String -> Node -> Eff (dom :: DOM | eff) Unit

-- | Removes empty text nodes and then combines any remaining text nodes that
-- | are contiguous.
foreign import normalize :: forall eff. Node -> Eff (dom :: DOM | eff) Unit

-- | Clones the node without cloning the node's descendants.
foreign import clone :: forall eff. Node -> Eff (dom :: DOM | eff) Node

-- | Clones the node and its descendants.
foreign import deepClone :: forall eff. Node -> Eff (dom :: DOM | eff) Node

-- | Checks whether two nodes are equivalent.
foreign import isEqualNode :: forall eff. Node -> Node -> Eff (dom :: DOM | eff) Boolean

-- TODO: compareDocumentPosition that returns a semigroup or something instead of the bitmask value

-- | Compares the position of two nodes in the document.
foreign import compareDocumentPositionBits :: forall eff. Node -> Node -> Eff (dom :: DOM | eff) Int

-- | Checks whether the second node is contained within the first
foreign import contains :: forall eff. Node -> Node -> Eff (dom :: DOM | eff) Boolean

lookupPrefix :: forall eff. String -> Node -> Eff (dom :: DOM | eff) (Maybe String)
lookupPrefix p = map toMaybe <<< _lookupPrefix p

foreign import _lookupPrefix :: forall eff. String -> Node -> Eff (dom :: DOM | eff) (Nullable String)

lookupNamespaceURI :: forall eff. String -> Node -> Eff (dom :: DOM | eff) (Maybe String)
lookupNamespaceURI ns = map toMaybe <<< _lookupNamespaceURI ns

foreign import _lookupNamespaceURI :: forall eff. String -> Node -> Eff (dom :: DOM | eff) (Nullable String)

foreign import isDefaultNamespace :: forall eff. String -> Node -> Eff (dom :: DOM | eff) Boolean

-- | Inserts the first node before the second as a child of the third node.
foreign import insertBefore :: forall eff. Node -> Node -> Node -> Eff (dom :: DOM | eff) Node

-- | Appends the first node to the child node list of the second node.
foreign import appendChild :: forall eff. Node -> Node -> Eff (dom :: DOM | eff) Node

-- | Uses the first node as a replacement for the second node in the children
-- | of the third node.
foreign import replaceChild :: forall eff. Node -> Node -> Node -> Eff (dom :: DOM | eff) Node

-- | Removes the first node from the children of the second node.
foreign import removeChild :: forall eff. Node -> Node -> Eff (dom :: DOM | eff) Node
