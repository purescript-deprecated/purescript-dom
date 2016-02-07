module DOM.Node.NodeType (NodeType(..)) where

import Prelude
import Data.Maybe (Maybe(..))
import Data.Enum (Enum, Cardinality(..), defaultSucc, defaultPred)

data NodeType
  = ElementNode
  | AttributeNode
  | TextNode
  | CDATASectionNode
  | EntityReferenceNode
  | EntityNode
  | ProcessingInstructionNode
  | CommentNode
  | DocumentNode
  | DocumentTypeNode
  | DocumentFragmentNode
  | NotationNode

instance eqNodeType :: Eq NodeType where
  eq ElementNode ElementNode = true
  eq AttributeNode AttributeNode = true
  eq TextNode TextNode = true
  eq CDATASectionNode CDATASectionNode = true
  eq EntityReferenceNode EntityReferenceNode = true
  eq EntityNode EntityNode = true
  eq ProcessingInstructionNode ProcessingInstructionNode = true
  eq CommentNode CommentNode = true
  eq DocumentNode DocumentNode = true
  eq DocumentTypeNode DocumentTypeNode = true
  eq DocumentFragmentNode DocumentFragmentNode = true
  eq NotationNode NotationNode = true
  eq _ _ = false

instance ordNodeType :: Ord NodeType where
  compare x y = compare (fromEnumNodeType x) (fromEnumNodeType y)

instance boundedNodeType :: Bounded NodeType where
  bottom = ElementNode
  top = NotationNode

instance boundedOrdNodeType :: BoundedOrd NodeType

instance enumNodeType :: Enum NodeType where
  cardinality = Cardinality 12
  succ = defaultSucc toEnumNodeType fromEnumNodeType
  pred = defaultPred toEnumNodeType fromEnumNodeType
  toEnum = toEnumNodeType
  fromEnum = fromEnumNodeType

toEnumNodeType :: Int -> Maybe NodeType
toEnumNodeType 1 = Just ElementNode
toEnumNodeType 2 = Just AttributeNode
toEnumNodeType 3 = Just TextNode
toEnumNodeType 4 = Just CDATASectionNode
toEnumNodeType 5 = Just EntityReferenceNode
toEnumNodeType 6 = Just EntityNode
toEnumNodeType 7 = Just ProcessingInstructionNode
toEnumNodeType 8 = Just CommentNode
toEnumNodeType 9 = Just DocumentNode
toEnumNodeType 10 = Just DocumentTypeNode
toEnumNodeType 11 = Just DocumentFragmentNode
toEnumNodeType 12 = Just NotationNode
toEnumNodeType _ = Nothing

fromEnumNodeType :: NodeType -> Int
fromEnumNodeType ElementNode = 1
fromEnumNodeType AttributeNode = 2
fromEnumNodeType TextNode = 3
fromEnumNodeType CDATASectionNode = 4
fromEnumNodeType EntityReferenceNode = 5
fromEnumNodeType EntityNode = 6
fromEnumNodeType ProcessingInstructionNode = 7
fromEnumNodeType CommentNode = 8
fromEnumNodeType DocumentNode = 9
fromEnumNodeType DocumentTypeNode = 10
fromEnumNodeType DocumentFragmentNode = 11
fromEnumNodeType NotationNode = 12
