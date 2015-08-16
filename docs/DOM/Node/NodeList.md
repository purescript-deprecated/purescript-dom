## Module DOM.Node.NodeList

#### `length`

``` purescript
length :: forall eff. NodeList -> Eff (dom :: DOM | eff) Int
```

The number of items in a NodeList.

#### `item`

``` purescript
item :: forall eff. Int -> NodeList -> Eff (dom :: DOM | eff) (Nullable Node)
```

The item in a NodeList at the specified index, or null if no such node
exists.


