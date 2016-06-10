module DOM.XHR.FormData (FormDataValue(..), toFormData) where

import Prelude
import Data.Foldable (class Foldable, foldMap)
import Data.Tuple (Tuple(..))
import DOM.File.Types (Blob, File)
import DOM.XHR.Types (FormData)

-- | Possible values of a `FormData`.
data FormDataValue = 
	  FormDataString String
	| FormDataFile String File -- ^ File name and `File` object.
	| FormDataBlob String Blob -- ^ Blob name and `Blob` object.

-- | Convert an associated array of keys and values to a `FormData`. 
toFormData :: forall f . (Foldable f) => f (Tuple String FormDataValue) -> FormData
toFormData dat =
	let form = newFormData unit in
	let _unit = foldMap (appendData form) dat in
	form
	
	where
		appendData form (Tuple key (FormDataString val)) = appendString form key val
		appendData form (Tuple key (FormDataFile name val)) = appendWithName form key val name
		appendData form (Tuple key (FormDataBlob name val)) = appendWithName form key val name

foreign import newFormData :: Unit -> FormData

foreign import appendString :: FormData -> String -> String -> Unit
foreign import appendWithName :: forall a . FormData -> String -> a -> String -> Unit
