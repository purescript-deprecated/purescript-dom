module DOM.HTML.HTMLFormElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLFormElement)

foreign import acceptCharset :: forall eff. HTMLFormElement -> Eff (dom :: DOM | eff) String
foreign import setAcceptCharset :: forall eff. String -> HTMLFormElement -> Eff (dom :: DOM | eff) Unit

foreign import action :: forall eff. HTMLFormElement -> Eff (dom :: DOM | eff) String
foreign import setAction :: forall eff. String -> HTMLFormElement -> Eff (dom :: DOM | eff) Unit

foreign import autocomplete :: forall eff. HTMLFormElement -> Eff (dom :: DOM | eff) String
foreign import setAutocomplete :: forall eff. String -> HTMLFormElement -> Eff (dom :: DOM | eff) Unit

foreign import enctype :: forall eff. HTMLFormElement -> Eff (dom :: DOM | eff) String
foreign import setEnctype :: forall eff. String -> HTMLFormElement -> Eff (dom :: DOM | eff) Unit

foreign import encoding :: forall eff. HTMLFormElement -> Eff (dom :: DOM | eff) String
foreign import setEncoding :: forall eff. String -> HTMLFormElement -> Eff (dom :: DOM | eff) Unit

foreign import method :: forall eff. HTMLFormElement -> Eff (dom :: DOM | eff) String
foreign import setMethod :: forall eff. String -> HTMLFormElement -> Eff (dom :: DOM | eff) Unit

foreign import name :: forall eff. HTMLFormElement -> Eff (dom :: DOM | eff) String
foreign import setName :: forall eff. String -> HTMLFormElement -> Eff (dom :: DOM | eff) Unit

foreign import noValidate :: forall eff. HTMLFormElement -> Eff (dom :: DOM | eff) Boolean
foreign import setNoValidate :: forall eff. Boolean -> HTMLFormElement -> Eff (dom :: DOM | eff) Unit

foreign import target :: forall eff. HTMLFormElement -> Eff (dom :: DOM | eff) String
foreign import setTarget :: forall eff. String -> HTMLFormElement -> Eff (dom :: DOM | eff) Unit

--   readonly attribute HTMLFormControlsCollection elements;

foreign import length :: forall eff. HTMLFormElement -> Eff (dom :: DOM | eff) Int

--   getter Element (unsigned long index);
--   getter (RadioNodeList or Element) (DOMString name);

foreign import submit :: forall eff. HTMLFormElement -> Eff (dom :: DOM | eff) Unit
foreign import reset :: forall eff. HTMLFormElement -> Eff (dom :: DOM | eff) Unit
foreign import checkValidity :: forall eff. HTMLFormElement -> Eff (dom :: DOM | eff) Boolean
