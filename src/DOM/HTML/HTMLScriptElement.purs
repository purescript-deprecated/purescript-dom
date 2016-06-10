module DOM.HTML.HTMLScriptElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLScriptElement)

foreign import src :: forall eff. HTMLScriptElement -> Eff (dom :: DOM | eff) String
foreign import setSrc :: forall eff. String -> HTMLScriptElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLScriptElement -> Eff (dom :: DOM | eff) String
foreign import setType :: forall eff. String -> HTMLScriptElement -> Eff (dom :: DOM | eff) Unit

foreign import charset :: forall eff. HTMLScriptElement -> Eff (dom :: DOM | eff) String
foreign import setCharset :: forall eff. String -> HTMLScriptElement -> Eff (dom :: DOM | eff) Unit

foreign import async :: forall eff. HTMLScriptElement -> Eff (dom :: DOM | eff) Boolean
foreign import setAsync :: forall eff. Boolean -> HTMLScriptElement -> Eff (dom :: DOM | eff) Unit

foreign import defer :: forall eff. HTMLScriptElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDefer :: forall eff. Boolean -> HTMLScriptElement -> Eff (dom :: DOM | eff) Unit

foreign import crossOrigin :: forall eff. HTMLScriptElement -> Eff (dom :: DOM | eff) String
foreign import setCrossOrigin :: forall eff. String -> HTMLScriptElement -> Eff (dom :: DOM | eff) Unit

foreign import text :: forall eff. HTMLScriptElement -> Eff (dom :: DOM | eff) String
foreign import setText :: forall eff. String -> HTMLScriptElement -> Eff (dom :: DOM | eff) Unit
