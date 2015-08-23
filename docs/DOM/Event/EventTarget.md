## Module DOM.Event.EventTarget

#### `EventListener`

``` purescript
data EventListener :: # ! -> *
```

A boxed function that can be used as an event listener. This is necessary
due to the underling implementation of Eff functions.

#### `eventListener`

``` purescript
eventListener :: forall eff a. (Event -> Eff eff a) -> EventListener eff
```

Creates an EventListener from a normal PureScript Eff function.

#### `addEventListener`

``` purescript
addEventListener :: forall eff. EventType -> EventListener (dom :: DOM | eff) -> Boolean -> EventTarget -> Eff (dom :: DOM | eff) Unit
```

Adds a listener to an event target. The boolean argument indicates whether
the listener should be added for the "capture" phase.

#### `removeEventListener`

``` purescript
removeEventListener :: forall eff. EventType -> EventListener (dom :: DOM | eff) -> Boolean -> EventTarget -> Eff (dom :: DOM | eff) Unit
```

Removes a listener to an event target. The boolean argument indicates
whether the listener should be removed for the "capture" phase.

#### `dispatchEvent`

``` purescript
dispatchEvent :: forall eff. Event -> EventTarget -> Eff (dom :: DOM, err :: EXCEPTION | eff) Boolean
```

Dispatches an event from an event target.


