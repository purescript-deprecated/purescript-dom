## Module DOM.Node.Types

#### `Node`

``` purescript
data Node :: *
```

#### `NonElementParentNode`

``` purescript
data NonElementParentNode :: *
```

#### `ParentNode`

``` purescript
data ParentNode :: *
```

#### `NonDocumentTypeChildNode`

``` purescript
data NonDocumentTypeChildNode :: *
```

#### `ChildNode`

``` purescript
data ChildNode :: *
```

#### `NodeList`

``` purescript
data NodeList :: *
```

#### `HTMLCollection`

``` purescript
data HTMLCollection :: *
```

#### `Document`

``` purescript
data Document :: *
```

#### `documentToNonElementParentNode`

``` purescript
documentToNonElementParentNode :: Document -> NonElementParentNode
```

#### `documentToParentNode`

``` purescript
documentToParentNode :: Document -> ParentNode
```

#### `documentToNode`

``` purescript
documentToNode :: Document -> Node
```

#### `documentToEventTarget`

``` purescript
documentToEventTarget :: Document -> EventTarget
```

#### `Element`

``` purescript
data Element :: *
```

#### `ElementId`

``` purescript
newtype ElementId
  = ElementId String
```

#### `elementToParentNode`

``` purescript
elementToParentNode :: Element -> ParentNode
```

#### `elementToNonDocumentTypeChildNode`

``` purescript
elementToNonDocumentTypeChildNode :: Element -> NonDocumentTypeChildNode
```

#### `elementToNode`

``` purescript
elementToNode :: Element -> Node
```

#### `elementToEventTarget`

``` purescript
elementToEventTarget :: Element -> EventTarget
```

#### `CharacterData`

``` purescript
data CharacterData :: *
```

#### `characterDataToNonDocumentTypeChildNode`

``` purescript
characterDataToNonDocumentTypeChildNode :: CharacterData -> NonDocumentTypeChildNode
```

#### `Text`

``` purescript
data Text :: *
```

#### `textToNode`

``` purescript
textToNode :: Text -> Node
```

#### `Comment`

``` purescript
data Comment :: *
```

#### `commentToNode`

``` purescript
commentToNode :: Comment -> Node
```

#### `ProcessingInstruction`

``` purescript
data ProcessingInstruction :: *
```

#### `processingInstructionToNode`

``` purescript
processingInstructionToNode :: ProcessingInstruction -> Node
```

#### `DocumentFragment`

``` purescript
data DocumentFragment :: *
```

#### `documentFragmentToNonElementParentNode`

``` purescript
documentFragmentToNonElementParentNode :: DocumentFragment -> NonElementParentNode
```

#### `documentFragmentToParentNode`

``` purescript
documentFragmentToParentNode :: DocumentFragment -> ParentNode
```

#### `documentFragmentToNode`

``` purescript
documentFragmentToNode :: DocumentFragment -> Node
```

#### `DocumentType`

``` purescript
data DocumentType :: *
```

#### `documentTypeToNode`

``` purescript
documentTypeToNode :: DocumentType -> Node
```


