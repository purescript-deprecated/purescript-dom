-- http://www.w3.org/TR/html5
module DOM.HTML.Types where

import Prelude

import DOM.Event.Types
import DOM.Node.Types

import qualified Unsafe.Coerce as U

foreign import data Window :: *

windowToEventTarget :: Window -> EventTarget
windowToEventTarget = U.unsafeCoerce

foreign import data HTMLDocument :: *

htmlDocumentToDocument :: HTMLDocument -> Document
htmlDocumentToDocument = U.unsafeCoerce

htmlDocumentToEventTarget :: HTMLDocument -> EventTarget
htmlDocumentToEventTarget = U.unsafeCoerce

foreign import data HTMLElement :: *

htmlElementToElement :: HTMLElement -> Element
htmlElementToElement = U.unsafeCoerce

htmlElementToParentNode :: Element -> ParentNode
htmlElementToParentNode = U.unsafeCoerce

htmlElementToNonDocumentTypeChildNode :: Element -> NonDocumentTypeChildNode
htmlElementToNonDocumentTypeChildNode = U.unsafeCoerce

htmlElementToNode :: HTMLElement -> Node
htmlElementToNode = U.unsafeCoerce

htmlElementToEventTarget :: HTMLElement -> EventTarget
htmlElementToEventTarget = U.unsafeCoerce
