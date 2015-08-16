## Module DOM.Node.NonElementParentNode

#### `previousElementSibling`

``` purescript
previousElementSibling :: forall eff. NonElementParentNode -> Eff (dom :: DOM | eff) (Nullable Element)
```

The previous sibling that is an element, or null if no such element exists.

#### `nextElementSibling`

``` purescript
nextElementSibling :: forall eff. NonElementParentNode -> Eff (dom :: DOM | eff) (Nullable Element)
```

The next sibling that is an element, or null if no such element exists.


