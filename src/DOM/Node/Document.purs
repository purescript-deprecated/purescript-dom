module DOM.Node.Document
  ( url
  , documentURI
  , origin
  , compatMode
  , characterSet
  , contentType
  , doctype
  , documentElement
  , getElementsByTagName
  , getElementsByTagNameNS
  , getElementsByClassName
  , createElement
  , createElementNS
  , createDocumentFragment
  , createTextNode
  , createComment
  , createProcessingInstruction
  , importNode
  , adoptNode
  ) where

import Prelude
import Control.Monad.Effect (Effect)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe, toNullable)
import DOM.Node.Types (Node, Document, ProcessingInstruction, Comment, Text, DocumentFragment, Element, HTMLCollection, DocumentType)

foreign import url :: Document -> Effect String
foreign import documentURI :: Document -> Effect String
foreign import origin :: Document -> Effect String
foreign import compatMode :: Document -> Effect String
foreign import characterSet :: Document -> Effect String
foreign import contentType :: Document -> Effect String

doctype :: Document -> Effect (Maybe DocumentType)
doctype = map toMaybe <<< _doctype

foreign import _doctype :: Document -> Effect (Nullable DocumentType)

documentElement :: Document -> Effect (Maybe Element)
documentElement = map toMaybe <<< _documentElement

foreign import _documentElement :: Document -> Effect (Nullable Element)

foreign import getElementsByTagName :: String -> Document -> Effect HTMLCollection

getElementsByTagNameNS :: Maybe String -> String -> Document -> Effect HTMLCollection
getElementsByTagNameNS = _getElementsByTagNameNS <<< toNullable

foreign import _getElementsByTagNameNS :: Nullable String -> String -> Document -> Effect HTMLCollection
foreign import getElementsByClassName :: String -> Document -> Effect HTMLCollection

foreign import createElement :: String -> Document -> Effect Element

createElementNS :: Maybe String -> String -> Document -> Effect Element
createElementNS = _createElementNS <<< toNullable

foreign import _createElementNS :: Nullable String -> String -> Document -> Effect Element
foreign import createDocumentFragment :: Document -> Effect DocumentFragment
foreign import createTextNode :: String -> Document -> Effect Text
foreign import createComment :: String -> Document -> Effect Comment
foreign import createProcessingInstruction :: String -> String -> Document -> Effect ProcessingInstruction

foreign import importNode :: Node -> Boolean -> Document -> Effect Node
foreign import adoptNode :: Node -> Document -> Effect Node
