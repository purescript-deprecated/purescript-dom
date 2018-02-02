module DOM.HTML.HTMLIFrameElement
  ( src
  , setSrc
  , srcdoc
  , setSrcdoc
  , name
  , setName
  , width
  , setWidth
  , height
  , setHeight
  , contentDocument
  , contentWindow
  ) where

import Prelude

import Control.Monad.Effect (Effect)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM.HTML.Types (Window, HTMLIFrameElement)
import DOM.Node.Types (Document)

foreign import src :: HTMLIFrameElement -> Effect String
foreign import setSrc :: String -> HTMLIFrameElement -> Effect Unit

foreign import srcdoc :: HTMLIFrameElement -> Effect String
foreign import setSrcdoc :: String -> HTMLIFrameElement -> Effect Unit

foreign import name :: HTMLIFrameElement -> Effect String
foreign import setName :: String -> HTMLIFrameElement -> Effect Unit

--   [PutForwards=value] readonly attribute DOMSettableTokenList sandbox;

foreign import width :: HTMLIFrameElement -> Effect String
foreign import setWidth :: String -> HTMLIFrameElement -> Effect Unit

foreign import height :: HTMLIFrameElement -> Effect String
foreign import setHeight :: String -> HTMLIFrameElement -> Effect Unit

foreign import _contentDocument :: HTMLIFrameElement -> Effect (Nullable Document)
foreign import _contentWindow :: HTMLIFrameElement -> Effect (Nullable Window)

contentDocument :: HTMLIFrameElement -> Effect (Maybe Document)
contentDocument = map toMaybe <<< _contentDocument

contentWindow :: HTMLIFrameElement -> Effect (Maybe Window)
contentWindow = map toMaybe <<< _contentWindow
