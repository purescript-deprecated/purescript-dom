## Module DOM.Node.Document

#### `url`

``` purescript
url :: forall eff. Document -> Eff (dom :: DOM | eff) String
```

#### `documentURI`

``` purescript
documentURI :: forall eff. Document -> Eff (dom :: DOM | eff) String
```

#### `origin`

``` purescript
origin :: forall eff. Document -> Eff (dom :: DOM | eff) String
```

#### `compatMode`

``` purescript
compatMode :: forall eff. Document -> Eff (dom :: DOM | eff) String
```

#### `characterSet`

``` purescript
characterSet :: forall eff. Document -> Eff (dom :: DOM | eff) String
```

#### `contentType`

``` purescript
contentType :: forall eff. Document -> Eff (dom :: DOM | eff) String
```

#### `doctype`

``` purescript
doctype :: forall eff. Document -> Eff (dom :: DOM | eff) (Nullable DocumentType)
```

#### `documentElement`

``` purescript
documentElement :: forall eff. Document -> Eff (dom :: DOM | eff) (Nullable Element)
```

#### `getElementsByTagName`

``` purescript
getElementsByTagName :: forall eff. String -> Document -> Eff (dom :: DOM | eff) HTMLCollection
```

#### `getElementsByTagNameNS`

``` purescript
getElementsByTagNameNS :: forall eff. Nullable String -> String -> Document -> Eff (dom :: DOM | eff) HTMLCollection
```

#### `getElementsByClassName`

``` purescript
getElementsByClassName :: forall eff. String -> Document -> Eff (dom :: DOM | eff) HTMLCollection
```

#### `createElement`

``` purescript
createElement :: forall eff. String -> Document -> Eff (dom :: DOM | eff) Element
```

#### `createElementNS`

``` purescript
createElementNS :: forall eff. Nullable String -> String -> Document -> Eff (dom :: DOM | eff) Element
```

#### `createDocumentFragment`

``` purescript
createDocumentFragment :: forall eff. Document -> Eff (dom :: DOM | eff) DocumentFragment
```

#### `createTextNode`

``` purescript
createTextNode :: forall eff. String -> Eff (dom :: DOM | eff) Text
```

#### `createComment`

``` purescript
createComment :: forall eff. String -> Eff (dom :: DOM | eff) Comment
```

#### `createProcessingInstruction`

``` purescript
createProcessingInstruction :: forall eff. String -> String -> Eff (dom :: DOM | eff) ProcessingInstruction
```

#### `importNode`

``` purescript
importNode :: forall eff. Node -> Boolean -> Document -> Eff (dom :: DOM | eff) Node
```

#### `adoptNode`

``` purescript
adoptNode :: forall eff. Node -> Document -> Eff (dom :: DOM | eff) Node
```


