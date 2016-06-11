module DOM.HTML.HTMLMediaElement.CanPlayType
  ( CanPlayType
  , runCanPlayType
  , unspecified
  , maybe
  , probably
  ) where

import Prelude

newtype CanPlayType = CanPlayType String

runCanPlayType :: CanPlayType -> String
runCanPlayType (CanPlayType t) = t

derive instance eqCanPlayType :: Eq CanPlayType
derive instance ordCanPlayType :: Ord CanPlayType

instance showCanPlayType :: Show CanPlayType where
  show (CanPlayType t) = "(CanPlayType " <> show t <> ")"

unspecified :: CanPlayType
unspecified = CanPlayType ""

maybe :: CanPlayType
maybe = CanPlayType "maybe"

probably :: CanPlayType
probably = CanPlayType "probably"
