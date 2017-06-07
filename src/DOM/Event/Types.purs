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
import Data.Bifunctor (lmap)
import Data.Either (Either(..))
import Data.Foreign (F, Foreign, ForeignError(ForeignError), unsafeReadTagged)
import Data.Newtype (class Newtype, wrap)
import Unsafe.Coerce as U

-- | Basic type for all DOM events.
foreign import data Event :: Type

-- | The type of strings used for event types.
newtype EventType = EventType String

derive instance newtypeEventType :: Newtype EventType _
derive newtype instance eqEventType :: Eq EventType
derive newtype instance ordEventType :: Ord EventType

-- | A DOM item that can emit events.
foreign import data EventTarget :: Type

readEventTarget :: Foreign -> F EventTarget
readEventTarget =
  wrap <<< wrap <<< lmap (pure <<< ForeignError) <<<
    _readEventTarget Left Right

foreign import _readEventTarget
  :: (forall a b. a -> Either a b)
  -> (forall a b. b -> Either a b)
  -> Foreign
  -> Either String EventTarget

foreign import data CustomEvent :: Type

customEventToEvent :: CustomEvent -> Event
customEventToEvent = U.unsafeCoerce

readCustomEvent :: Foreign -> F CustomEvent
readCustomEvent = unsafeReadTagged "CustomEvent"

foreign import data UIEvent :: Type

uiEventToEvent :: UIEvent -> Event
uiEventToEvent = U.unsafeCoerce

readUIEvent :: Foreign -> F UIEvent
readUIEvent = unsafeReadTagged "UIEvent"

foreign import data FocusEvent :: Type

focusEventToEvent :: FocusEvent -> Event
focusEventToEvent = U.unsafeCoerce

readFocusEvent :: Foreign -> F FocusEvent
readFocusEvent = unsafeReadTagged "FocusEvent"

foreign import data MouseEvent :: Type

mouseEventToEvent :: MouseEvent -> Event
mouseEventToEvent = U.unsafeCoerce

readMouseEvent :: Foreign -> F MouseEvent
readMouseEvent = unsafeReadTagged "MouseEvent"

foreign import data WheelEvent :: Type

wheelEventToEvent :: WheelEvent -> Event
wheelEventToEvent = U.unsafeCoerce

readWheelEvent :: Foreign -> F WheelEvent
readWheelEvent = unsafeReadTagged "WheelEvent"

foreign import data TouchEvent :: Type

touchEventToEvent :: TouchEvent -> Event
touchEventToEvent = U.unsafeCoerce

readTouchEvent :: Foreign -> F TouchEvent
readTouchEvent = unsafeReadTagged "TouchEvent"

foreign import data InputEvent :: Type

inputEventToEvent :: InputEvent -> Event
inputEventToEvent = U.unsafeCoerce

readInputEvent :: Foreign -> F InputEvent
readInputEvent = unsafeReadTagged "InputEvent"

foreign import data KeyboardEvent :: Type

keyboardEventToEvent :: KeyboardEvent -> Event
keyboardEventToEvent = U.unsafeCoerce

readKeyboardEvent :: Foreign -> F KeyboardEvent
readKeyboardEvent = unsafeReadTagged "KeyboardEvent"

foreign import data CompositionEvent :: Type

compositionEventToEvent :: CompositionEvent -> Event
compositionEventToEvent = U.unsafeCoerce

readCompositionEvent :: Foreign -> F CompositionEvent
readCompositionEvent = unsafeReadTagged "CompositionEvent"

foreign import data ProgressEvent :: Type

progressEventToEvent :: ProgressEvent -> Event
progressEventToEvent = U.unsafeCoerce

readProgressEvent :: Foreign -> F ProgressEvent
readProgressEvent = unsafeReadTagged "ProgressEvent"

foreign import data ClipboardEvent :: Type

clipboardEventToEvent :: ClipboardEvent -> Event
clipboardEventToEvent = U.unsafeCoerce

readClipboardEvent :: Foreign -> F ClipboardEvent
readClipboardEvent = unsafeReadTagged "ClipboardEvent"
