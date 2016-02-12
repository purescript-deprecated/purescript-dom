module DOM.XHR.FormData (FormDataValue(..), toFormData) where

import Data.Tuple
import DOM.File.Types
import DOM.XHR.Types
import Prelude

-- | Possible values of a `FormData`.
data FormDataValue = 
	  FormDataString String
	| FormDataFile String File -- ^ File name and `File` object.
	| FormDataBlob String Blob -- ^ Blob name and `Blob` object.

-- | Convert an associated array of keys and values to a `FormData`. 
toFormData :: Array (Tuple String FormDataValue) -> FormData
toFormData dat =
	let form = newFormData unit in
	let _unit = map (appendData form) dat in
	form
	
	where
		appendData form (Tuple key (FormDataString val)) = appendString form key val
		appendData form (Tuple key (FormDataFile name val)) = appendFile form key val name
		appendData form (Tuple key (FormDataBlob name val)) = appendBlob form key val name

foreign import newFormData :: Unit -> FormData

foreign import appendString :: FormData -> String -> String -> Unit
foreign import appendFile :: FormData -> String -> File -> String -> Unit
foreign import appendBlob :: FormData -> String -> Blob -> String -> Unit
