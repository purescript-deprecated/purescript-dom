module DOM.Node.Document where

import Control.Monad.Eff (Eff)
import Data.Nullable (Nullable)
import DOM (DOM)
import DOM.Node.Types (Node, Document, ProcessingInstruction, Comment, Text, DocumentFragment, Element, HTMLCollection, DocumentType)

foreign import url :: forall eff. Document -> Eff (dom :: DOM | eff) String
foreign import documentURI :: forall eff. Document -> Eff (dom :: DOM | eff) String
foreign import origin :: forall eff. Document -> Eff (dom :: DOM | eff) String
foreign import compatMode :: forall eff. Document -> Eff (dom :: DOM | eff) String
foreign import characterSet :: forall eff. Document -> Eff (dom :: DOM | eff) String
foreign import contentType :: forall eff. Document -> Eff (dom :: DOM | eff) String

foreign import doctype :: forall eff. Document -> Eff (dom :: DOM | eff) (Nullable DocumentType)
foreign import documentElement :: forall eff. Document -> Eff (dom :: DOM | eff) (Nullable Element)

foreign import getElementsByTagName :: forall eff. String -> Document -> Eff (dom :: DOM | eff) HTMLCollection
foreign import getElementsByTagNameNS :: forall eff. Nullable String -> String -> Document -> Eff (dom :: DOM | eff) HTMLCollection
foreign import getElementsByClassName :: forall eff. String -> Document -> Eff (dom :: DOM | eff) HTMLCollection

foreign import createElement :: forall eff. String -> Document -> Eff (dom :: DOM | eff) Element
foreign import createElementNS :: forall eff. Nullable String -> String -> Document -> Eff (dom :: DOM | eff) Element
foreign import createDocumentFragment :: forall eff. Document -> Eff (dom :: DOM | eff) DocumentFragment
foreign import createTextNode :: forall eff. String -> Document -> Eff (dom :: DOM | eff) Text
foreign import createComment :: forall eff. String -> Document -> Eff (dom :: DOM | eff) Comment
foreign import createProcessingInstruction :: forall eff. String -> String -> Document -> Eff (dom :: DOM | eff) ProcessingInstruction

foreign import importNode :: forall eff. Node -> Boolean -> Document -> Eff (dom :: DOM | eff) Node
foreign import adoptNode :: forall eff. Node -> Document -> Eff (dom :: DOM | eff) Node
