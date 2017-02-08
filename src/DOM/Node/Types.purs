-- http://www.w3.org/TR/dom
module DOM.Node.Types where

import Prelude

import Data.Foreign (F, Foreign)
import Data.Newtype (class Newtype)

import DOM.Event.Types (EventTarget)

import Unsafe.Coerce (unsafeCoerce)
import DOM.Util.FFI (unsafeReadProtoTagged)

foreign import data Node :: *

readNode :: Foreign -> F Node
readNode = unsafeReadProtoTagged "Node"

foreign import data NonElementParentNode :: *
foreign import data ParentNode :: *
foreign import data NonDocumentTypeChildNode :: *
foreign import data ChildNode :: *
foreign import data NodeList :: *
foreign import data HTMLCollection :: *
foreign import data DOMTokenList :: *

foreign import data Document :: *

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

foreign import data Element :: *

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

foreign import data CharacterData :: *

characterDataToNonDocumentTypeChildNode ::
  CharacterData -> NonDocumentTypeChildNode
characterDataToNonDocumentTypeChildNode = unsafeCoerce

foreign import data Text :: *

textToNode :: Text -> Node
textToNode = unsafeCoerce

foreign import data Comment :: *

commentToNode :: Comment -> Node
commentToNode = unsafeCoerce

foreign import data ProcessingInstruction :: *

processingInstructionToNode :: ProcessingInstruction -> Node
processingInstructionToNode = unsafeCoerce

foreign import data DocumentFragment :: *

documentFragmentToNonElementParentNode ::
  DocumentFragment -> NonElementParentNode
documentFragmentToNonElementParentNode = unsafeCoerce

documentFragmentToParentNode :: DocumentFragment -> ParentNode
documentFragmentToParentNode = unsafeCoerce

documentFragmentToNode :: DocumentFragment -> Node
documentFragmentToNode = unsafeCoerce

foreign import data DocumentType :: *

documentTypeToNode :: DocumentType -> Node
documentTypeToNode = unsafeCoerce
