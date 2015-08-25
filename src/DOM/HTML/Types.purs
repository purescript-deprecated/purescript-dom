-- http://www.w3.org/TR/html5
module DOM.HTML.Types
  ( Window()
  , windowToEventTarget
  , HTMLDocument()
  , htmlDocumentToDocument
  , htmlDocumentToNonElementParentNode
  , htmlDocumentToParentNode
  , htmlDocumentToNode
  , htmlDocumentToEventTarget
  , readHTMLDocument
  , HTMLElement()
  , htmlElementToElement
  , htmlElementToParentNode
  , htmlElementToNonDocumentTypeChildNode
  , htmlElementToNode
  , htmlElementToEventTarget
  , readHTMLElement
  ) where

import Prelude

import Data.Either (Either(..))
import Data.Foreign (Foreign(), F(), ForeignError(..), unsafeReadTagged)
import Data.Foreign.Class (IsForeign)

import DOM.Event.Types
import DOM.Node.Types

import qualified Unsafe.Coerce as U

foreign import data Window :: *

windowToEventTarget :: Window -> EventTarget
windowToEventTarget = U.unsafeCoerce

foreign import data HTMLDocument :: *

htmlDocumentToDocument :: HTMLDocument -> Document
htmlDocumentToDocument = U.unsafeCoerce

htmlDocumentToNonElementParentNode :: HTMLDocument -> NonElementParentNode
htmlDocumentToNonElementParentNode = U.unsafeCoerce

htmlDocumentToParentNode :: HTMLDocument -> ParentNode
htmlDocumentToParentNode = U.unsafeCoerce

htmlDocumentToNode :: HTMLDocument -> Node
htmlDocumentToNode = U.unsafeCoerce

htmlDocumentToEventTarget :: HTMLDocument -> EventTarget
htmlDocumentToEventTarget = U.unsafeCoerce

readHTMLDocument :: Foreign -> F HTMLDocument
readHTMLDocument = unsafeReadTagged "HTMLDocument"

instance isForeignHTMLDocument :: IsForeign HTMLDocument where
  read = readHTMLDocument

foreign import data HTMLElement :: *

htmlElementToElement :: HTMLElement -> Element
htmlElementToElement = U.unsafeCoerce

htmlElementToParentNode :: HTMLElement -> ParentNode
htmlElementToParentNode = U.unsafeCoerce

htmlElementToNonDocumentTypeChildNode :: HTMLElement -> NonDocumentTypeChildNode
htmlElementToNonDocumentTypeChildNode = U.unsafeCoerce

htmlElementToNode :: HTMLElement -> Node
htmlElementToNode = U.unsafeCoerce

htmlElementToEventTarget :: HTMLElement -> EventTarget
htmlElementToEventTarget = U.unsafeCoerce

foreign import _readHTMLElement :: (forall a. String -> F a) -> (forall a. a -> F a) -> Foreign -> F HTMLElement

readHTMLElement :: Foreign -> F HTMLElement
readHTMLElement = _readHTMLElement (Left <<< TypeMismatch "HTMLElement") Right

instance isForeignHTMLElement :: IsForeign HTMLElement where
  read = readHTMLElement
