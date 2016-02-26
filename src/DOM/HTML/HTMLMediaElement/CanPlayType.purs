module DOM.HTML.HTMLMediaElement.CanPlayType
  ( CanPlayType()
  , runCanPlayType
  , unspecified
  , maybe
  , probably
  ) where

import Prelude

newtype CanPlayType = CanPlayType String

runCanPlayType :: CanPlayType -> String
runCanPlayType (CanPlayType t) = t

instance eqCanPlayType :: Eq CanPlayType where
  eq (CanPlayType x) (CanPlayType y) = x == y

instance ordCanPlayType :: Ord CanPlayType where
  compare (CanPlayType x) (CanPlayType y) = compare x y

instance showCanPlayType :: Show CanPlayType where
  show (CanPlayType t) = "(CanPlayType " <> show t <> ")"

unspecified :: CanPlayType
unspecified = CanPlayType ""

maybe :: CanPlayType
maybe = CanPlayType "maybe"

probably :: CanPlayType
probably = CanPlayType "probably"
