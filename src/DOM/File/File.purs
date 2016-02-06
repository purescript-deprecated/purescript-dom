module DOM.File.File
  ( name
  , lastModified
  , lastModifiedDate
  ) where

import DOM.File.Types (File())

import Data.Date (JSDate())

foreign import name :: File -> String
foreign import lastModifiedDate :: File -> JSDate
foreign import lastModified :: File -> Number
