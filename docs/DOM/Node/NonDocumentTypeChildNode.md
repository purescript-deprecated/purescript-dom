## Module DOM.Node.NonDocumentTypeChildNode

#### `getElementById`

``` purescript
getElementById :: forall eff. ElementId -> NonDocumentTypeChildNode -> Eff (dom :: DOM | eff) (Nullable Element)
```

The first element within node's descendants with a matching ID, or null if
no such element exists.


