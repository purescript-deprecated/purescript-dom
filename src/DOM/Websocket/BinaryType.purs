module DOM.Websocket.BinaryType where

import Prelude
import Data.Enum (Cardinality(..), class BoundedEnum, defaultPred, defaultSucc, class Enum)
import Data.Maybe (Maybe(..))

data BinaryType
  = Blob
  | ArrayBuffer

derive instance eqBinaryType :: Eq BinaryType
derive instance ordBinaryType :: Ord BinaryType

instance boundedBinaryType :: Bounded BinaryType where
  bottom = Blob
  top = ArrayBuffer

instance enumBinaryType :: Enum BinaryType where
  succ = defaultSucc toEnumBinaryType fromEnumBinaryType
  pred = defaultPred toEnumBinaryType fromEnumBinaryType

instance boundedEnumBinaryType :: BoundedEnum BinaryType where
  cardinality = Cardinality 2
  toEnum = toEnumBinaryType
  fromEnum = fromEnumBinaryType

instance showBinaryType :: Show BinaryType where
  show Blob = "Blob"
  show ArrayBuffer = "ArrayBuffer"

toEnumBinaryType :: Int -> Maybe BinaryType
toEnumBinaryType =
  case _ of
    0 -> Just Blob
    1 -> Just ArrayBuffer
    _ -> Nothing

fromEnumBinaryType :: BinaryType -> Int
fromEnumBinaryType =
  case _ of
    Blob -> 0
    ArrayBuffer -> 1

printBinaryType :: BinaryType -> String
printBinaryType =
  case _ of
    Blob -> "blob"
    ArrayBuffer -> "arraybuffer"
