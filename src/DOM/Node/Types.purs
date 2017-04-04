-- http://www.w3.org/TR/dom
module DOM.Node.Types where

import Prelude

import Data.Foreign (F, Foreign)
import Data.Newtype (class Newtype)

import DOM.Event.Types (EventTarget)

import Unsafe.Coerce (unsafeCoerce)
import DOM.Util.FFI (unsafeReadProtoTagged)

foreign import data Node :: Type

readNode :: Foreign -> F Node
readNode = unsafeReadProtoTagged "Node"

foreign import data NonElementParentNode :: Type
foreign import data ParentNode :: Type
foreign import data NonDocumentTypeChildNode :: Type
foreign import data ChildNode :: Type
foreign import data NodeList :: Type
foreign import data HTMLCollection :: Type
foreign import data DOMTokenList :: Type

foreign import data Document :: Type

readDocument :: Foreign -> F Document
readDocument = unsafeReadProtoTagged "Document"

documentToNonElementParentNode :: Document -> NonElementParentNode
documentToNonElementParentNode = unsafeCoerce

documentToParentNode :: Document -> ParentNode
documentToParentNode = unsafeCoerce

documentToNode :: Document -> Node
documentToNode = unsafeCoerce

documentToEventTarget :: Document -> EventTarget
documentToEventTarget = unsafeCoerce

foreign import data Element :: Type

newtype ElementId = ElementId String

derive instance newtypeElementId :: Newtype ElementId _
derive newtype instance eqElementId :: Eq ElementId
derive newtype instance oOrdElementId :: Ord ElementId

readElement :: Foreign -> F Element
readElement = unsafeReadProtoTagged "Element"

elementToParentNode :: Element -> ParentNode
elementToParentNode = unsafeCoerce

elementToNonDocumentTypeChildNode :: Element -> NonDocumentTypeChildNode
elementToNonDocumentTypeChildNode = unsafeCoerce

elementToNode :: Element -> Node
elementToNode = unsafeCoerce

elementToEventTarget :: Element -> EventTarget
elementToEventTarget = unsafeCoerce

foreign import data CharacterData :: Type

characterDataToNonDocumentTypeChildNode ::
  CharacterData -> NonDocumentTypeChildNode
characterDataToNonDocumentTypeChildNode = unsafeCoerce

foreign import data Text :: Type

textToNode :: Text -> Node
textToNode = unsafeCoerce

foreign import data Comment :: Type

commentToNode :: Comment -> Node
commentToNode = unsafeCoerce

foreign import data ProcessingInstruction :: Type

processingInstructionToNode :: ProcessingInstruction -> Node
processingInstructionToNode = unsafeCoerce

foreign import data DocumentFragment :: Type

documentFragmentToNonElementParentNode ::
  DocumentFragment -> NonElementParentNode
documentFragmentToNonElementParentNode = unsafeCoerce

documentFragmentToParentNode :: DocumentFragment -> ParentNode
documentFragmentToParentNode = unsafeCoerce

documentFragmentToNode :: DocumentFragment -> Node
documentFragmentToNode = unsafeCoerce

foreign import data DocumentType :: Type

documentTypeToNode :: DocumentType -> Node
documentTypeToNode = unsafeCoerce
