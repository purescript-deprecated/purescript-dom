module DOM.HTML.HTMLIFrameElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import Data.Nullable (Nullable)

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

foreign import contentDocument :: forall eff. HTMLIFrameElement -> Eff (dom :: DOM | eff) (Nullable Document)

--   readonly attribute WindowProxy? contentWindow;
