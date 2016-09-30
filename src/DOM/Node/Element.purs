module DOM.Node.Element where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Nullable (Nullable)
import DOM (DOM)
import DOM.Node.Types (Element, HTMLCollection, ElementId)

foreign import namespaceURI :: Element -> Nullable String
foreign import prefix :: Element -> Nullable String
foreign import localName :: Element -> String
foreign import tagName :: Element -> String

foreign import id :: forall eff. Element -> Eff (dom :: DOM | eff) ElementId
foreign import setId :: forall eff. ElementId -> Element -> Eff (dom :: DOM | eff) Unit
foreign import className :: forall eff. Element -> Eff (dom :: DOM | eff) String
foreign import setClassName :: forall eff. String -> Element -> Eff (dom :: DOM | eff) Unit

foreign import getElementsByTagName :: forall eff. String -> Element -> Eff (dom :: DOM | eff) HTMLCollection
foreign import getElementsByTagNameNS :: forall eff. Nullable String -> String -> Element -> Eff (dom :: DOM | eff) HTMLCollection
foreign import getElementsByClassName :: forall eff. String -> Element -> Eff (dom :: DOM | eff) HTMLCollection

foreign import setAttribute :: forall eff. String -> String -> Element -> Eff (dom :: DOM | eff) Unit
foreign import getAttribute :: forall eff. String -> Element -> Eff (dom :: DOM | eff) (Nullable String)
foreign import removeAttribute :: forall eff. String -> Element -> Eff (dom :: DOM | eff) Unit

foreign import scrollTop :: forall eff. Element -> Eff (dom :: DOM | eff) Number
foreign import setScrollTop :: forall eff. Number -> Element -> Eff (dom :: DOM | eff) Unit

foreign import scrollLeft :: forall eff. Element -> Eff (dom :: DOM | eff) Number
foreign import setScrollLeft :: forall eff. Number -> Element -> Eff (dom :: DOM | eff) Unit

foreign import scrollWidth :: forall eff. Element -> Eff (dom :: DOM | eff) Number
foreign import scrollHeight :: forall eff. Element -> Eff (dom :: DOM | eff) Number
foreign import clientTop :: forall eff. Element -> Eff (dom :: DOM | eff) Number
foreign import clientLeft :: forall eff. Element -> Eff (dom :: DOM | eff) Number
foreign import clientWidth :: forall eff. Element -> Eff (dom :: DOM | eff) Number
foreign import clientHeight :: forall eff. Element -> Eff (dom :: DOM | eff) Number
