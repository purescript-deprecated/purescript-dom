module DOM.Util.FFI (unsafeReadProtoTagged) where

import Prelude

import Control.Monad.Except (except)

import Data.Either (Either(..))
import Data.Foreign (F, Foreign, ForeignError(..))

foreign import _unsafeReadProtoTagged
  :: forall n
   . String
  -> (forall a. String -> F a)
  -> (forall a. a -> F a)
  -> Foreign
  -> F n

unsafeReadProtoTagged :: forall a. String -> Foreign -> F a
unsafeReadProtoTagged name =
  _unsafeReadProtoTagged
    name
    (except <<< Left <<< pure <<< TypeMismatch name)
    (except <<< Right)
