-- http://www.w3.org/TR/html5
module DOM.HTML.Types where

import Prelude

import DOM.Node.Types

import qualified Unsafe.Coerce as U

foreign import data Window :: *

foreign import data HTMLDocument :: *

htmlDocumentToDocument :: HTMLDocument -> Document
htmlDocumentToDocument = U.unsafeCoerce

foreign import data HTMLElement :: *

htmlElementToElement :: HTMLElement -> Element
htmlElementToElement = U.unsafeCoerce

htmlElementToParentNode :: Element -> ParentNode
htmlElementToParentNode = U.unsafeCoerce

htmlElementToNonDocumentTypeChildNode :: Element -> NonDocumentTypeChildNode
htmlElementToNonDocumentTypeChildNode = U.unsafeCoerce

htmlElementToNode :: HTMLElement -> Node
htmlElementToNode = U.unsafeCoerce
