## Module DOM.HTML.Types

#### `Window`

``` purescript
data Window :: *
```

#### `windowToEventTarget`

``` purescript
windowToEventTarget :: Window -> EventTarget
```

#### `HTMLDocument`

``` purescript
data HTMLDocument :: *
```

##### Instances
``` purescript
instance isForeignHTMLDocument :: IsForeign HTMLDocument
```

#### `htmlDocumentToDocument`

``` purescript
htmlDocumentToDocument :: HTMLDocument -> Document
```

#### `htmlDocumentToNonElementParentNode`

``` purescript
htmlDocumentToNonElementParentNode :: HTMLDocument -> NonElementParentNode
```

#### `htmlDocumentToParentNode`

``` purescript
htmlDocumentToParentNode :: HTMLDocument -> ParentNode
```

#### `htmlDocumentToNode`

``` purescript
htmlDocumentToNode :: HTMLDocument -> Node
```

#### `htmlDocumentToEventTarget`

``` purescript
htmlDocumentToEventTarget :: HTMLDocument -> EventTarget
```

#### `readHTMLDocument`

``` purescript
readHTMLDocument :: Foreign -> F HTMLDocument
```

#### `HTMLElement`

``` purescript
data HTMLElement :: *
```

##### Instances
``` purescript
instance isForeignHTMLElement :: IsForeign HTMLElement
```

#### `htmlElementToElement`

``` purescript
htmlElementToElement :: HTMLElement -> Element
```

#### `htmlElementToParentNode`

``` purescript
htmlElementToParentNode :: HTMLElement -> ParentNode
```

#### `htmlElementToNonDocumentTypeChildNode`

``` purescript
htmlElementToNonDocumentTypeChildNode :: HTMLElement -> NonDocumentTypeChildNode
```

#### `htmlElementToNode`

``` purescript
htmlElementToNode :: HTMLElement -> Node
```

#### `htmlElementToEventTarget`

``` purescript
htmlElementToEventTarget :: HTMLElement -> EventTarget
```

#### `readHTMLElement`

``` purescript
readHTMLElement :: Foreign -> F HTMLElement
```


