## Module DOM.Node.Node

#### `nodeType`

``` purescript
nodeType :: Node -> NodeType
```

The type of a node.

#### `nodeTypeIndex`

``` purescript
nodeTypeIndex :: Node -> Int
```

The numeric value for the type of a node.

#### `nodeName`

``` purescript
nodeName :: Node -> String
```

For elements this is the tag name, for document types this is the doctype
name, for processing instructions this is the target, for all other nodes
it is a string like `"#text"`, `"#comment", etc. depending on the node
type.

#### `baseURI`

``` purescript
baseURI :: forall eff. Node -> Eff (dom :: DOM | eff) String
```

The node's base URL.

#### `ownerDocument`

``` purescript
ownerDocument :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Document)
```

The document the node belongs to, unless the node is a document in which
case the value is null.

#### `parentNode`

``` purescript
parentNode :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Node)
```

The parent node of the node.

#### `parentElement`

``` purescript
parentElement :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Element)
```

The parent element of the node.

#### `hasChildNodes`

``` purescript
hasChildNodes :: forall eff. Node -> Eff (dom :: DOM | eff) Boolean
```

Indicates whether the node has any child nodes.

#### `childNodes`

``` purescript
childNodes :: forall eff. Node -> Eff (dom :: DOM | eff) NodeList
```

The children of the node.

#### `firstChild`

``` purescript
firstChild :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Node)
```

The first child of the node, or null if the node has no children.

#### `lastChild`

``` purescript
lastChild :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Node)
```

The last child of the node, or null if the node has no children.

#### `previousSibling`

``` purescript
previousSibling :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Node)
```

The previous sibling node, or null if there is no previous sibling.

#### `nextSibling`

``` purescript
nextSibling :: forall eff. Node -> Eff (dom :: DOM | eff) (Nullable Node)
```

The next sibling node, or null if there is no next sibling.

#### `nodeValue`

``` purescript
nodeValue :: forall eff. Node -> Eff (dom :: DOM | eff) String
```

If the node type is text, comment, or processing instruction this is the
node's data, or null in all other cases.

#### `setNodeValue`

``` purescript
setNodeValue :: forall eff. String -> Node -> Eff (dom :: DOM | eff) Unit
```

If the node type is text, comment, or processing instruction this allows
the node's data to be changed, or has no effect in all other cases.

#### `textContent`

``` purescript
textContent :: forall eff. Node -> Eff (dom :: DOM | eff) String
```

If the node type is document fragment, element, text, processing
instruction, or comment this is the node's data, or null in all other
cases.

#### `setTextContent`

``` purescript
setTextContent :: forall eff. Node -> Eff (dom :: DOM | eff) Unit
```

If the node type is document fragment, element, text, processing
instruction, or comment this allows the node's data to be changed, or has
no effect in all other cases.

#### `normalize`

``` purescript
normalize :: forall eff. Node -> Eff (dom :: DOM | eff) Unit
```

Removes empty text nodes and then combines any remaining text nodes that
are contiguous.

#### `clone`

``` purescript
clone :: forall eff. Node -> Eff (dom :: DOM | eff) Unit
```

Clones the node without cloning the node's descendants.

#### `deepClone`

``` purescript
deepClone :: forall eff. Node -> Eff (dom :: DOM | eff) Unit
```

Clones the node and its descendants.

#### `isEqualNode`

``` purescript
isEqualNode :: forall eff. Node -> Node -> Eff (dom :: DOM | eff) Boolean
```

Checks whether two nodes are equivalent.

#### `compareDocumentPositionBits`

``` purescript
compareDocumentPositionBits :: forall eff. Node -> Node -> Eff (dom :: DOM | eff) Int
```

#### `contains`

``` purescript
contains :: forall eff. Node -> Node -> Eff (dom :: DOM | eff) Boolean
```

Checks whether the second node is contained within the first

#### `lookupPrefix`

``` purescript
lookupPrefix :: forall eff. String -> Node -> Eff (dom :: DOM | eff) (Nullable String)
```

#### `lookupNamespaceURI`

``` purescript
lookupNamespaceURI :: forall eff. String -> Node -> Eff (dom :: DOM | eff) (Nullable String)
```

#### `isDefaultNamespace`

``` purescript
isDefaultNamespace :: forall eff. String -> Node -> Eff (dom :: DOM | eff) Boolean
```

#### `insertBefore`

``` purescript
insertBefore :: forall eff. Node -> Node -> Node -> Eff (dom :: DOM | eff) Node
```

Inserts the first node before the second as a child of the third node.

#### `appendChild`

``` purescript
appendChild :: forall eff. Node -> Node -> Eff (dom :: DOM | eff) Node
```

Appends the first node to the child node list of the second node.

#### `replaceChild`

``` purescript
replaceChild :: forall eff. Node -> Node -> Node -> Eff (dom :: DOM | eff) Node
```

Uses the first node as a replacement for the second node in the children
of the third node.

#### `removeChild`

``` purescript
removeChild :: forall eff. Node -> Node -> Eff (dom :: DOM | eff) Node
```

Removes the first node from the children of the second node.


