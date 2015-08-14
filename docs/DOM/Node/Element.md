## Module DOM.Node.Element

#### `namespaceURI`

``` purescript
namespaceURI :: Element -> Nullable String
```

#### `prefix`

``` purescript
prefix :: Element -> Nullable String
```

#### `localName`

``` purescript
localName :: Element -> String
```

#### `tagName`

``` purescript
tagName :: Element -> String
```

#### `id`

``` purescript
id :: forall eff. Element -> Eff (dom :: DOM | eff) ElementId
```

#### `setId`

``` purescript
setId :: forall eff. ElementId -> Element -> Eff (dom :: DOM | eff) ElementId
```

#### `className`

``` purescript
className :: forall eff. Element -> Eff (dom :: DOM | eff) String
```

#### `setClassName`

``` purescript
setClassName :: forall eff. String -> Element -> Eff (dom :: DOM | eff) String
```

#### `getElementsByTagName`

``` purescript
getElementsByTagName :: forall eff. String -> Element -> Eff (dom :: DOM | eff) HTMLCollection
```

#### `getElementsByTagNameNS`

``` purescript
getElementsByTagNameNS :: forall eff. Nullable String -> String -> Element -> Eff (dom :: DOM | eff) HTMLCollection
```

#### `getElementsByClassName`

``` purescript
getElementsByClassName :: forall eff. String -> Element -> Eff (dom :: DOM | eff) HTMLCollection
```


