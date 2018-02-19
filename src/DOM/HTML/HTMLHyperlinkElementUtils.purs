-- The `URLUtils` interface, referenced in https://www.w3.org/TR/html50/infrastructure.html#urlutils
--   now documented at https://html.spec.whatwg.org/multipage/links.html#htmlhyperlinkelementutils
module DOM.HTML.HTMLHyperlinkElementUtils where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLHyperlinkElementUtils)

foreign import href :: forall eff. HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) String
foreign import setHref :: forall eff. String -> HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) Unit

foreign import origin :: forall eff. HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) String

foreign import protocol :: forall eff. HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) String
foreign import setProtocol :: forall eff. String -> HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) Unit

foreign import username :: forall eff. HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) String
foreign import setUsername :: forall eff. String -> HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) Unit

foreign import password :: forall eff. HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) String
foreign import setPassword :: forall eff. String -> HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) Unit

foreign import host :: forall eff. HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) String
foreign import setHost :: forall eff. String -> HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) Unit

foreign import hostname :: forall eff. HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) String
foreign import setHostname :: forall eff. String -> HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) Unit

foreign import port :: forall eff. HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) String
foreign import setPort :: forall eff. String -> HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) Unit

foreign import pathname :: forall eff. HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) String
foreign import setPathname :: forall eff. String -> HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) Unit

foreign import search :: forall eff. HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) String
foreign import setSearch :: forall eff. String -> HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) Unit

foreign import hash :: forall eff. HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) String
foreign import setHash :: forall eff. String -> HTMLHyperlinkElementUtils -> Eff (dom :: DOM | eff) Unit
