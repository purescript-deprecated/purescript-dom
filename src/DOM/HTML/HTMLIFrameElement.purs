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
  ) where

import Prelude

import Control.Monad.Eff (Eff)

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

import DOM (DOM)
import DOM.HTML.Types (HTMLIFrameElement)
import DOM.Node.Types (Document)

foreign import src :: forall eff. HTMLIFrameElement -> Eff (dom :: DOM | eff) String
foreign import setSrc :: forall eff. String -> HTMLIFrameElement -> Eff (dom :: DOM | eff) Unit

foreign import srcdoc :: forall eff. HTMLIFrameElement -> Eff (dom :: DOM | eff) String
foreign import setSrcdoc :: forall eff. String -> HTMLIFrameElement -> Eff (dom :: DOM | eff) Unit

foreign import name :: forall eff. HTMLIFrameElement -> Eff (dom :: DOM | eff) String
foreign import setName :: forall eff. String -> HTMLIFrameElement -> Eff (dom :: DOM | eff) Unit

--   [PutForwards=value] readonly attribute DOMSettableTokenList sandbox;

foreign import width :: forall eff. HTMLIFrameElement -> Eff (dom :: DOM | eff) String
foreign import setWidth :: forall eff. String -> HTMLIFrameElement -> Eff (dom :: DOM | eff) Unit

foreign import height :: forall eff. HTMLIFrameElement -> Eff (dom :: DOM | eff) String
foreign import setHeight :: forall eff. String -> HTMLIFrameElement -> Eff (dom :: DOM | eff) Unit

foreign import _contentDocument :: forall eff. HTMLIFrameElement -> Eff (dom :: DOM | eff) (Nullable Document)

contentDocument :: forall eff. HTMLIFrameElement -> Eff (dom :: DOM | eff) (Maybe Document)
contentDocument = map toMaybe <<< _contentDocument

--   readonly attribute WindowProxy? contentWindow;
