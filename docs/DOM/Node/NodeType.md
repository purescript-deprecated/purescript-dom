## Module DOM.Node.NodeType

#### `NodeType`

``` purescript
data NodeType
  = ElementNode
  | AttributeNode
  | TextNode
  | CDATASectionNode
  | EntityReferenceNode
  | EntityNode
  | ProcessingInstructionNode
  | CommentNode
  | DocumentNode
  | DocumentTypeNode
  | DocumentFragmentNode
  | NotationNode
```

##### Instances
``` purescript
instance eqNodeType :: Eq NodeType
instance ordNodeType :: Ord NodeType
instance boundedNodeType :: Bounded NodeType
instance boundedOrdNodeType :: BoundedOrd NodeType
instance enumNodeType :: Enum NodeType
```


