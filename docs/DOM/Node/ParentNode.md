## Module DOM.Node.ParentNode

#### `children`

``` purescript
children :: forall eff. ParentNode -> Eff (dom :: DOM | eff) HTMLCollection
```

The child elements for the node.

#### `firstElementChild`

``` purescript
firstElementChild :: forall eff. ParentNode -> Eff (dom :: DOM | eff) (Nullable Element)
```

The first child that is an element, or null if no such element exists.

#### `lastElementChild`

``` purescript
lastElementChild :: forall eff. ParentNode -> Eff (dom :: DOM | eff) (Nullable Element)
```

The last child that is an element, or null if no such element exists.

#### `childElementCount`

``` purescript
childElementCount :: forall eff. ParentNode -> Eff (dom :: DOM | eff) Int
```

The number of child elements.

#### `querySelector`

``` purescript
querySelector :: forall eff. String -> ParentNode -> Eff (dom :: DOM | eff) (Nullable Element)
```

Finds the first child that is an element that matches the selector(s), or
null if no such element exists.

#### `querySelectorAll`

``` purescript
querySelectorAll :: forall eff. String -> ParentNode -> Eff (dom :: DOM | eff) NodeList
```

Finds all the child elements that matches the selector(s).


