-- http://www.w3.org/TR/dom
module DOM.Node.Types where

import Prelude

import DOM.Event.Types

import qualified Unsafe.Coerce as U

foreign import data Node :: *

foreign import data NonElementParentNode :: *
foreign import data ParentNode :: *
foreign import data NonDocumentTypeChildNode :: *
foreign import data ChildNode :: *
foreign import data NodeList :: *
foreign import data HTMLCollection :: *
foreign import data DOMTokenList :: *

foreign import data Document :: *

documentToNonElementParentNode :: Document -> NonElementParentNode
documentToNonElementParentNode = U.unsafeCoerce

documentToParentNode :: Document -> ParentNode
documentToParentNode = U.unsafeCoerce

documentToNode :: Document -> Node
documentToNode = U.unsafeCoerce

documentToEventTarget :: Document -> EventTarget
documentToEventTarget = U.unsafeCoerce

foreign import data Element :: *

newtype ElementId = ElementId String

elementToParentNode :: Element -> ParentNode
elementToParentNode = U.unsafeCoerce

elementToNonDocumentTypeChildNode :: Element -> NonDocumentTypeChildNode
elementToNonDocumentTypeChildNode = U.unsafeCoerce

elementToNode :: Element -> Node
elementToNode = U.unsafeCoerce

elementToEventTarget :: Element -> EventTarget
elementToEventTarget = U.unsafeCoerce

foreign import data CharacterData :: *

characterDataToNonDocumentTypeChildNode :: CharacterData -> NonDocumentTypeChildNode
characterDataToNonDocumentTypeChildNode = U.unsafeCoerce

foreign import data Text :: *

textToNode :: Text -> Node
textToNode = U.unsafeCoerce

foreign import data Comment :: *

commentToNode :: Comment -> Node
commentToNode = U.unsafeCoerce

foreign import data ProcessingInstruction :: *

processingInstructionToNode :: ProcessingInstruction -> Node
processingInstructionToNode = U.unsafeCoerce

foreign import data DocumentFragment :: *

documentFragmentToNonElementParentNode :: DocumentFragment -> NonElementParentNode
documentFragmentToNonElementParentNode = U.unsafeCoerce

documentFragmentToParentNode :: DocumentFragment -> ParentNode
documentFragmentToParentNode = U.unsafeCoerce

documentFragmentToNode :: DocumentFragment -> Node
documentFragmentToNode = U.unsafeCoerce

foreign import data DocumentType :: *

documentTypeToNode :: DocumentType -> Node
documentTypeToNode = U.unsafeCoerce
