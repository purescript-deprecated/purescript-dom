## Module DOM.Event.Types

#### `Event`

``` purescript
data Event :: *
```

Basic type for all DOM events.

#### `EventType`

``` purescript
newtype EventType
  = EventType String
```

The type of strings used for event types.

##### Instances
``` purescript
Eq EventType
Ord EventType
```

#### `EventTarget`

``` purescript
data EventTarget :: *
```

A DOM item that can emit events.

##### Instances
``` purescript
IsForeign EventTarget
```

#### `readEventTarget`

``` purescript
readEventTarget :: Foreign -> F EventTarget
```

#### `AnimationEvent`

``` purescript
data AnimationEvent :: *
```

##### Instances
``` purescript
IsForeign AnimationEvent
```

#### `animationEventToEvent`

``` purescript
animationEventToEvent :: AnimationEvent -> Event
```

#### `readAnimationEvent`

``` purescript
readAnimationEvent :: Foreign -> F AnimationEvent
```

#### `AudioProcessingEvent`

``` purescript
data AudioProcessingEvent :: *
```

##### Instances
``` purescript
IsForeign AudioProcessingEvent
```

#### `audioProcessingEventToEvent`

``` purescript
audioProcessingEventToEvent :: AudioProcessingEvent -> Event
```

#### `readAudioProcessingEvent`

``` purescript
readAudioProcessingEvent :: Foreign -> F AudioProcessingEvent
```

#### `BeforeInputEvent`

``` purescript
data BeforeInputEvent :: *
```

##### Instances
``` purescript
IsForeign BeforeInputEvent
```

#### `beforeInputEventToEvent`

``` purescript
beforeInputEventToEvent :: BeforeInputEvent -> Event
```

#### `readBeforeInputEvent`

``` purescript
readBeforeInputEvent :: Foreign -> F BeforeInputEvent
```

#### `BeforeUnloadEvent`

``` purescript
data BeforeUnloadEvent :: *
```

##### Instances
``` purescript
IsForeign BeforeUnloadEvent
```

#### `beforeUnloadEventToEvent`

``` purescript
beforeUnloadEventToEvent :: BeforeUnloadEvent -> Event
```

#### `readBeforeUnloadEvent`

``` purescript
readBeforeUnloadEvent :: Foreign -> F BeforeUnloadEvent
```

#### `BlobEvent`

``` purescript
data BlobEvent :: *
```

##### Instances
``` purescript
IsForeign BlobEvent
```

#### `blobEventToEvent`

``` purescript
blobEventToEvent :: BlobEvent -> Event
```

#### `readBlobEvent`

``` purescript
readBlobEvent :: Foreign -> F BlobEvent
```

#### `ClipboardEvent`

``` purescript
data ClipboardEvent :: *
```

##### Instances
``` purescript
IsForeign ClipboardEvent
```

#### `clipboardEventToEvent`

``` purescript
clipboardEventToEvent :: ClipboardEvent -> Event
```

#### `readClipboardEvent`

``` purescript
readClipboardEvent :: Foreign -> F ClipboardEvent
```

#### `CloseEvent`

``` purescript
data CloseEvent :: *
```

##### Instances
``` purescript
IsForeign CloseEvent
```

#### `closeEventToEvent`

``` purescript
closeEventToEvent :: CloseEvent -> Event
```

#### `readCloseEvent`

``` purescript
readCloseEvent :: Foreign -> F CloseEvent
```

#### `CompositionEvent`

``` purescript
data CompositionEvent :: *
```

##### Instances
``` purescript
IsForeign CompositionEvent
```

#### `compositionEventToEvent`

``` purescript
compositionEventToEvent :: CompositionEvent -> Event
```

#### `readCompositionEvent`

``` purescript
readCompositionEvent :: Foreign -> F CompositionEvent
```

#### `CSSFontFaceLoadEvent`

``` purescript
data CSSFontFaceLoadEvent :: *
```

##### Instances
``` purescript
IsForeign CSSFontFaceLoadEvent
```

#### `cssFontFaceLoadEventToEvent`

``` purescript
cssFontFaceLoadEventToEvent :: CSSFontFaceLoadEvent -> Event
```

#### `readCSSFontFaceLoadEvent`

``` purescript
readCSSFontFaceLoadEvent :: Foreign -> F CSSFontFaceLoadEvent
```

#### `CustomEvent`

``` purescript
data CustomEvent :: *
```

##### Instances
``` purescript
IsForeign CustomEvent
```

#### `customEventToEvent`

``` purescript
customEventToEvent :: CustomEvent -> Event
```

#### `readCustomEvent`

``` purescript
readCustomEvent :: Foreign -> F CustomEvent
```

#### `DeviceLightEvent`

``` purescript
data DeviceLightEvent :: *
```

##### Instances
``` purescript
IsForeign DeviceLightEvent
```

#### `deviceLightEventToEvent`

``` purescript
deviceLightEventToEvent :: DeviceLightEvent -> Event
```

#### `readDeviceLightEvent`

``` purescript
readDeviceLightEvent :: Foreign -> F DeviceLightEvent
```

#### `DeviceMotionEvent`

``` purescript
data DeviceMotionEvent :: *
```

##### Instances
``` purescript
IsForeign DeviceMotionEvent
```

#### `deviceMotionEventToEvent`

``` purescript
deviceMotionEventToEvent :: DeviceMotionEvent -> Event
```

#### `readDeviceMotionEvent`

``` purescript
readDeviceMotionEvent :: Foreign -> F DeviceMotionEvent
```

#### `DeviceOrientationEvent`

``` purescript
data DeviceOrientationEvent :: *
```

##### Instances
``` purescript
IsForeign DeviceOrientationEvent
```

#### `deviceOrientationEventToEvent`

``` purescript
deviceOrientationEventToEvent :: DeviceOrientationEvent -> Event
```

#### `readDeviceOrientationEvent`

``` purescript
readDeviceOrientationEvent :: Foreign -> F DeviceOrientationEvent
```

#### `DeviceProximityEvent`

``` purescript
data DeviceProximityEvent :: *
```

##### Instances
``` purescript
IsForeign DeviceProximityEvent
```

#### `deviceProximityEventToEvent`

``` purescript
deviceProximityEventToEvent :: DeviceProximityEvent -> Event
```

#### `readDeviceProximityEvent`

``` purescript
readDeviceProximityEvent :: Foreign -> F DeviceProximityEvent
```

#### `DOMTransactionEvent`

``` purescript
data DOMTransactionEvent :: *
```

##### Instances
``` purescript
IsForeign DOMTransactionEvent
```

#### `domTransactionEventToEvent`

``` purescript
domTransactionEventToEvent :: DOMTransactionEvent -> Event
```

#### `readDOMTransactionEvent`

``` purescript
readDOMTransactionEvent :: Foreign -> F DOMTransactionEvent
```

#### `DragEvent`

``` purescript
data DragEvent :: *
```

##### Instances
``` purescript
IsForeign DragEvent
```

#### `dragEventToEvent`

``` purescript
dragEventToEvent :: DragEvent -> Event
```

#### `readDragEvent`

``` purescript
readDragEvent :: Foreign -> F DragEvent
```

#### `EditingBeforeInputEvent`

``` purescript
data EditingBeforeInputEvent :: *
```

##### Instances
``` purescript
IsForeign EditingBeforeInputEvent
```

#### `editingBeforeInputEventToEvent`

``` purescript
editingBeforeInputEventToEvent :: EditingBeforeInputEvent -> Event
```

#### `readEditingBeforeInputEvent`

``` purescript
readEditingBeforeInputEvent :: Foreign -> F EditingBeforeInputEvent
```

#### `ErrorEvent`

``` purescript
data ErrorEvent :: *
```

##### Instances
``` purescript
IsForeign ErrorEvent
```

#### `errorEventToEvent`

``` purescript
errorEventToEvent :: ErrorEvent -> Event
```

#### `readErrorEvent`

``` purescript
readErrorEvent :: Foreign -> F ErrorEvent
```

#### `FetchEvent`

``` purescript
data FetchEvent :: *
```

##### Instances
``` purescript
IsForeign FetchEvent
```

#### `fetchEventToEvent`

``` purescript
fetchEventToEvent :: FetchEvent -> Event
```

#### `readFetchEvent`

``` purescript
readFetchEvent :: Foreign -> F FetchEvent
```

#### `FocusEvent`

``` purescript
data FocusEvent :: *
```

##### Instances
``` purescript
IsForeign FocusEvent
```

#### `focusEventToEvent`

``` purescript
focusEventToEvent :: FocusEvent -> Event
```

#### `readFocusEvent`

``` purescript
readFocusEvent :: Foreign -> F FocusEvent
```

#### `GamepadEvent`

``` purescript
data GamepadEvent :: *
```

##### Instances
``` purescript
IsForeign GamepadEvent
```

#### `gamepadEventToEvent`

``` purescript
gamepadEventToEvent :: GamepadEvent -> Event
```

#### `readGamepadEvent`

``` purescript
readGamepadEvent :: Foreign -> F GamepadEvent
```

#### `HashChangeEvent`

``` purescript
data HashChangeEvent :: *
```

##### Instances
``` purescript
IsForeign HashChangeEvent
```

#### `hashChangeEventToEvent`

``` purescript
hashChangeEventToEvent :: HashChangeEvent -> Event
```

#### `readHashChangeEvent`

``` purescript
readHashChangeEvent :: Foreign -> F HashChangeEvent
```

#### `IDBVersionChangeEvent`

``` purescript
data IDBVersionChangeEvent :: *
```

##### Instances
``` purescript
IsForeign IDBVersionChangeEvent
```

#### `idbVersionChangeEventToEvent`

``` purescript
idbVersionChangeEventToEvent :: IDBVersionChangeEvent -> Event
```

#### `readIDBVersionChangeEvent`

``` purescript
readIDBVersionChangeEvent :: Foreign -> F IDBVersionChangeEvent
```

#### `InputEvent`

``` purescript
data InputEvent :: *
```

##### Instances
``` purescript
IsForeign InputEvent
```

#### `inputEventToEvent`

``` purescript
inputEventToEvent :: InputEvent -> Event
```

#### `readInputEvent`

``` purescript
readInputEvent :: Foreign -> F InputEvent
```

#### `KeyboardEvent`

``` purescript
data KeyboardEvent :: *
```

##### Instances
``` purescript
IsForeign KeyboardEvent
```

#### `keyboardEventToEvent`

``` purescript
keyboardEventToEvent :: KeyboardEvent -> Event
```

#### `readKeyboardEvent`

``` purescript
readKeyboardEvent :: Foreign -> F KeyboardEvent
```

#### `MediaStreamEvent`

``` purescript
data MediaStreamEvent :: *
```

##### Instances
``` purescript
IsForeign MediaStreamEvent
```

#### `mediaStreamEventToEvent`

``` purescript
mediaStreamEventToEvent :: MediaStreamEvent -> Event
```

#### `readMediaStreamEvent`

``` purescript
readMediaStreamEvent :: Foreign -> F MediaStreamEvent
```

#### `MessageEvent`

``` purescript
data MessageEvent :: *
```

##### Instances
``` purescript
IsForeign MessageEvent
```

#### `messageEventToEvent`

``` purescript
messageEventToEvent :: MessageEvent -> Event
```

#### `readMessageEvent`

``` purescript
readMessageEvent :: Foreign -> F MessageEvent
```

#### `MouseEvent`

``` purescript
data MouseEvent :: *
```

##### Instances
``` purescript
IsForeign MouseEvent
```

#### `mouseEventToEvent`

``` purescript
mouseEventToEvent :: MouseEvent -> Event
```

#### `readMouseEvent`

``` purescript
readMouseEvent :: Foreign -> F MouseEvent
```

#### `MutationEvent`

``` purescript
data MutationEvent :: *
```

##### Instances
``` purescript
IsForeign MutationEvent
```

#### `mutationEventToEvent`

``` purescript
mutationEventToEvent :: MutationEvent -> Event
```

#### `readMutationEvent`

``` purescript
readMutationEvent :: Foreign -> F MutationEvent
```

#### `OfflineAudioCompletionEvent`

``` purescript
data OfflineAudioCompletionEvent :: *
```

##### Instances
``` purescript
IsForeign OfflineAudioCompletionEvent
```

#### `offlineAudioCompletionEventToEvent`

``` purescript
offlineAudioCompletionEventToEvent :: OfflineAudioCompletionEvent -> Event
```

#### `readOfflineAudioCompletionEvent`

``` purescript
readOfflineAudioCompletionEvent :: Foreign -> F OfflineAudioCompletionEvent
```

#### `PageTransitionEvent`

``` purescript
data PageTransitionEvent :: *
```

##### Instances
``` purescript
IsForeign PageTransitionEvent
```

#### `pageTransitionEventToEvent`

``` purescript
pageTransitionEventToEvent :: PageTransitionEvent -> Event
```

#### `readPageTransitionEvent`

``` purescript
readPageTransitionEvent :: Foreign -> F PageTransitionEvent
```

#### `PointerEvent`

``` purescript
data PointerEvent :: *
```

##### Instances
``` purescript
IsForeign PointerEvent
```

#### `pointerEventToEvent`

``` purescript
pointerEventToEvent :: PointerEvent -> Event
```

#### `readPointerEvent`

``` purescript
readPointerEvent :: Foreign -> F PointerEvent
```

#### `PopStateEvent`

``` purescript
data PopStateEvent :: *
```

##### Instances
``` purescript
IsForeign PopStateEvent
```

#### `popStateEventToEvent`

``` purescript
popStateEventToEvent :: PopStateEvent -> Event
```

#### `readPopStateEvent`

``` purescript
readPopStateEvent :: Foreign -> F PopStateEvent
```

#### `ProgressEvent`

``` purescript
data ProgressEvent :: *
```

##### Instances
``` purescript
IsForeign ProgressEvent
```

#### `progressEventToEvent`

``` purescript
progressEventToEvent :: ProgressEvent -> Event
```

#### `readProgressEvent`

``` purescript
readProgressEvent :: Foreign -> F ProgressEvent
```

#### `RelatedEvent`

``` purescript
data RelatedEvent :: *
```

##### Instances
``` purescript
IsForeign RelatedEvent
```

#### `relatedEventToEvent`

``` purescript
relatedEventToEvent :: RelatedEvent -> Event
```

#### `readRelatedEvent`

``` purescript
readRelatedEvent :: Foreign -> F RelatedEvent
```

#### `RTCDataChannelEvent`

``` purescript
data RTCDataChannelEvent :: *
```

##### Instances
``` purescript
IsForeign RTCDataChannelEvent
```

#### `rtcDataChannelEventToEvent`

``` purescript
rtcDataChannelEventToEvent :: RTCDataChannelEvent -> Event
```

#### `readRTCDataChannelEvent`

``` purescript
readRTCDataChannelEvent :: Foreign -> F RTCDataChannelEvent
```

#### `RTCIdentityErrorEvent`

``` purescript
data RTCIdentityErrorEvent :: *
```

##### Instances
``` purescript
IsForeign RTCIdentityErrorEvent
```

#### `rtcIdentityErrorEventToEvent`

``` purescript
rtcIdentityErrorEventToEvent :: RTCIdentityErrorEvent -> Event
```

#### `readRTCIdentityErrorEvent`

``` purescript
readRTCIdentityErrorEvent :: Foreign -> F RTCIdentityErrorEvent
```

#### `RTCIdentityEvent`

``` purescript
data RTCIdentityEvent :: *
```

##### Instances
``` purescript
IsForeign RTCIdentityEvent
```

#### `rtcIdentityEventToEvent`

``` purescript
rtcIdentityEventToEvent :: RTCIdentityEvent -> Event
```

#### `readRTCIdentityEvent`

``` purescript
readRTCIdentityEvent :: Foreign -> F RTCIdentityEvent
```

#### `RTCPeerConnectionIceEvent`

``` purescript
data RTCPeerConnectionIceEvent :: *
```

##### Instances
``` purescript
IsForeign RTCPeerConnectionIceEvent
```

#### `rtcPeerConnectionIceEventToEvent`

``` purescript
rtcPeerConnectionIceEventToEvent :: RTCPeerConnectionIceEvent -> Event
```

#### `readRTCPeerConnectionIceEvent`

``` purescript
readRTCPeerConnectionIceEvent :: Foreign -> F RTCPeerConnectionIceEvent
```

#### `SensorEvent`

``` purescript
data SensorEvent :: *
```

##### Instances
``` purescript
IsForeign SensorEvent
```

#### `sensorEventToEvent`

``` purescript
sensorEventToEvent :: SensorEvent -> Event
```

#### `readSensorEvent`

``` purescript
readSensorEvent :: Foreign -> F SensorEvent
```

#### `StorageEvent`

``` purescript
data StorageEvent :: *
```

##### Instances
``` purescript
IsForeign StorageEvent
```

#### `storageEventToEvent`

``` purescript
storageEventToEvent :: StorageEvent -> Event
```

#### `readStorageEvent`

``` purescript
readStorageEvent :: Foreign -> F StorageEvent
```

#### `SVGEvent`

``` purescript
data SVGEvent :: *
```

##### Instances
``` purescript
IsForeign SVGEvent
```

#### `svgEventToEvent`

``` purescript
svgEventToEvent :: SVGEvent -> Event
```

#### `readSVGEvent`

``` purescript
readSVGEvent :: Foreign -> F SVGEvent
```

#### `SVGZoomEvent`

``` purescript
data SVGZoomEvent :: *
```

##### Instances
``` purescript
IsForeign SVGZoomEvent
```

#### `svgZoomEventToEvent`

``` purescript
svgZoomEventToEvent :: SVGZoomEvent -> Event
```

#### `readSVGZoomEvent`

``` purescript
readSVGZoomEvent :: Foreign -> F SVGZoomEvent
```

#### `TimeEvent`

``` purescript
data TimeEvent :: *
```

##### Instances
``` purescript
IsForeign TimeEvent
```

#### `timeEventToEvent`

``` purescript
timeEventToEvent :: TimeEvent -> Event
```

#### `readTimeEvent`

``` purescript
readTimeEvent :: Foreign -> F TimeEvent
```

#### `TouchEvent`

``` purescript
data TouchEvent :: *
```

##### Instances
``` purescript
IsForeign TouchEvent
```

#### `touchEventToEvent`

``` purescript
touchEventToEvent :: TouchEvent -> Event
```

#### `readTouchEvent`

``` purescript
readTouchEvent :: Foreign -> F TouchEvent
```

#### `TransitionEvent`

``` purescript
data TransitionEvent :: *
```

##### Instances
``` purescript
IsForeign TransitionEvent
```

#### `transitionEventToEvent`

``` purescript
transitionEventToEvent :: TransitionEvent -> Event
```

#### `readTransitionEvent`

``` purescript
readTransitionEvent :: Foreign -> F TransitionEvent
```

#### `UIEvent`

``` purescript
data UIEvent :: *
```

##### Instances
``` purescript
IsForeign UIEvent
```

#### `uiEventToEvent`

``` purescript
uiEventToEvent :: UIEvent -> Event
```

#### `readUIEvent`

``` purescript
readUIEvent :: Foreign -> F UIEvent
```

#### `UserProximityEvent`

``` purescript
data UserProximityEvent :: *
```

##### Instances
``` purescript
IsForeign UserProximityEvent
```

#### `userProximityEventToEvent`

``` purescript
userProximityEventToEvent :: UserProximityEvent -> Event
```

#### `readUserProximityEvent`

``` purescript
readUserProximityEvent :: Foreign -> F UserProximityEvent
```

#### `WheelEvent`

``` purescript
data WheelEvent :: *
```

##### Instances
``` purescript
IsForeign WheelEvent
```

#### `wheelEventToEvent`

``` purescript
wheelEventToEvent :: WheelEvent -> Event
```

#### `readWheelEvent`

``` purescript
readWheelEvent :: Foreign -> F WheelEvent
```


