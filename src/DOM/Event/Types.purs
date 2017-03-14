module DOM.Event.Types
  ( Event
  , EventType(..)
  , EventTarget
  , readEventTarget
  , CustomEvent
  , customEventToEvent
  , readCustomEvent
  , UIEvent
  , uiEventToEvent
  , readUIEvent
  , FocusEvent
  , focusEventToEvent
  , readFocusEvent
  , MouseEvent
  , mouseEventToEvent
  , readMouseEvent
  , WheelEvent
  , wheelEventToEvent
  , readWheelEvent
  , TouchEvent
  , touchEventToEvent
  , readTouchEvent
  , InputEvent
  , inputEventToEvent
  , readInputEvent
  , KeyboardEvent
  , keyboardEventToEvent
  , readKeyboardEvent
  , CompositionEvent
  , compositionEventToEvent
  , readCompositionEvent
  , ProgressEvent
  , progressEventToEvent
  , readProgressEvent
  , ClipboardEvent
  , clipboardEventToEvent
  , readClipboardEvent
  ) where

import Prelude
import Data.Either (Either(..))
import Data.Foreign (F, Foreign, unsafeReadTagged)
import Data.Foreign.Class (class IsForeign)
import Data.Newtype (class Newtype)
import Unsafe.Coerce as U

-- | Basic type for all DOM events.
foreign import data Event :: *

-- | The type of strings used for event types.
newtype EventType = EventType String

derive instance newtypeEventType :: Newtype EventType _
derive newtype instance eqEventType :: Eq EventType
derive newtype instance ordEventType :: Ord EventType

-- | A DOM item that can emit events.
foreign import data EventTarget :: *

readEventTarget :: Foreign -> F EventTarget
readEventTarget = _readEventTarget Left Right

foreign import _readEventTarget
  :: (forall a b. a -> Either a b)
  -> (forall a b. b -> Either a b)
  -> Foreign
  -> F EventTarget

instance isForeignEventTarget :: IsForeign EventTarget where
  read = readEventTarget

foreign import data CustomEvent :: *

customEventToEvent :: CustomEvent -> Event
customEventToEvent = U.unsafeCoerce

readCustomEvent :: Foreign -> F CustomEvent
readCustomEvent = unsafeReadTagged "CustomEvent"

instance isForeignCustomEvent :: IsForeign CustomEvent where
  read = readCustomEvent

foreign import data UIEvent :: *

uiEventToEvent :: UIEvent -> Event
uiEventToEvent = U.unsafeCoerce

readUIEvent :: Foreign -> F UIEvent
readUIEvent = unsafeReadTagged "UIEvent"

instance isForeignUIEvent :: IsForeign UIEvent where
  read = readUIEvent

foreign import data FocusEvent :: *

focusEventToEvent :: FocusEvent -> Event
focusEventToEvent = U.unsafeCoerce

readFocusEvent :: Foreign -> F FocusEvent
readFocusEvent = unsafeReadTagged "FocusEvent"

instance isForeignFocusEvent :: IsForeign FocusEvent where
  read = readFocusEvent

foreign import data MouseEvent :: *

mouseEventToEvent :: MouseEvent -> Event
mouseEventToEvent = U.unsafeCoerce

readMouseEvent :: Foreign -> F MouseEvent
readMouseEvent = unsafeReadTagged "MouseEvent"

instance isForeignMouseEvent :: IsForeign MouseEvent where
  read = readMouseEvent

foreign import data WheelEvent :: *

wheelEventToEvent :: WheelEvent -> Event
wheelEventToEvent = U.unsafeCoerce

readWheelEvent :: Foreign -> F WheelEvent
readWheelEvent = unsafeReadTagged "WheelEvent"

instance isForeignWheelEvent :: IsForeign WheelEvent where
  read = readWheelEvent

foreign import data TouchEvent :: *

touchEventToEvent :: TouchEvent -> Event
touchEventToEvent = U.unsafeCoerce

readTouchEvent :: Foreign -> F TouchEvent
readTouchEvent = unsafeReadTagged "TouchEvent"

instance isForeignTouchEvent :: IsForeign TouchEvent where
  read = readTouchEvent

foreign import data InputEvent :: *

inputEventToEvent :: InputEvent -> Event
inputEventToEvent = U.unsafeCoerce

readInputEvent :: Foreign -> F InputEvent
readInputEvent = unsafeReadTagged "InputEvent"

instance isForeignInputEvent :: IsForeign InputEvent where
  read = readInputEvent

foreign import data KeyboardEvent :: *

keyboardEventToEvent :: KeyboardEvent -> Event
keyboardEventToEvent = U.unsafeCoerce

readKeyboardEvent :: Foreign -> F KeyboardEvent
readKeyboardEvent = unsafeReadTagged "KeyboardEvent"

instance isForeignKeyboardEvent :: IsForeign KeyboardEvent where
  read = readKeyboardEvent

foreign import data CompositionEvent :: *

compositionEventToEvent :: CompositionEvent -> Event
compositionEventToEvent = U.unsafeCoerce

readCompositionEvent :: Foreign -> F CompositionEvent
readCompositionEvent = unsafeReadTagged "CompositionEvent"

instance isForeignCompositionEvent :: IsForeign CompositionEvent where
  read = readCompositionEvent

foreign import data ProgressEvent :: *

progressEventToEvent :: ProgressEvent -> Event
progressEventToEvent = U.unsafeCoerce

readProgressEvent :: Foreign -> F ProgressEvent
readProgressEvent = unsafeReadTagged "ProgressEvent"

instance isForeignProgressEvent :: IsForeign ProgressEvent where
  read = readProgressEvent

foreign import data ClipboardEvent :: *

clipboardEventToEvent :: ClipboardEvent -> Event
clipboardEventToEvent = U.unsafeCoerce

readClipboardEvent :: Foreign -> F ClipboardEvent
readClipboardEvent = unsafeReadTagged "ClipboardEvent"

instance isForeignClipboardEvent :: IsForeign ClipboardEvent where
  read = readClipboardEvent
