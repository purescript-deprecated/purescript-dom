## Module DOM.Node.HTMLCollection

#### `length`

``` purescript
length :: forall eff. HTMLCollection -> Eff (dom :: DOM | eff) Int
```

The number of elements in a HTMLCollection.

#### `item`

``` purescript
item :: forall eff. Int -> HTMLCollection -> Eff (dom :: DOM | eff) (Nullable Element)
```

The element in a HTMLCollection at the specified index, or null if no such
element exists.

#### `namedItem`

``` purescript
namedItem :: forall eff. ElementId -> HTMLCollection -> Eff (dom :: DOM | eff) (Nullable Element)
```

The first element with the specified name or ID in a HTMLCollection, or
null if no such element exists.


