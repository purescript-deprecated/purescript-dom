module DOM.Node.DocumentType where

import DOM.Node.Types

foreign import name :: DocumentType -> String
foreign import publicId :: DocumentType -> String
foreign import systemId :: DocumentType -> String
