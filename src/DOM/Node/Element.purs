module DOM.Node.Element
  ( namespaceURI
  , prefix
  , localName
  , tagName
  , id
  , setId
  , className
  , setClassName
  , getElementsByTagName
  , getElementsByTagNameNS
  , getElementsByClassName
  , setAttribute
  , getAttribute
  , removeAttribute
  , scrollTop
  , setScrollTop
  , scrollLeft
  , setScrollLeft
  , scrollWidth
  , scrollHeight
  , clientTop
  , clientLeft
  , clientWidth
  , clientHeight
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe, toNullable)
import DOM (DOM)
import DOM.Node.Types (Element, HTMLCollection, ElementId)

namespaceURI :: Element -> Maybe String
namespaceURI = toMaybe <<< _namespaceURI

prefix :: Element -> Maybe String
prefix = toMaybe <<< _prefix

foreign import _namespaceURI :: Element -> Nullable String
foreign import _prefix :: Element -> Nullable String
foreign import localName :: Element -> String
foreign import tagName :: Element -> String

foreign import id :: forall eff. Element -> Eff (dom :: DOM | eff) ElementId
foreign import setId :: forall eff. ElementId -> Element -> Eff (dom :: DOM | eff) Unit
foreign import className :: forall eff. Element -> Eff (dom :: DOM | eff) String
foreign import setClassName :: forall eff. String -> Element -> Eff (dom :: DOM | eff) Unit

foreign import getElementsByTagName :: forall eff. String -> Element -> Eff (dom :: DOM | eff) HTMLCollection

getElementsByTagNameNS :: forall eff. Maybe String -> String -> Element -> Eff (dom :: DOM | eff) HTMLCollection
getElementsByTagNameNS = _getElementsByTagNameNS <<< toNullable

foreign import _getElementsByTagNameNS :: forall eff. Nullable String -> String -> Element -> Eff (dom :: DOM | eff) HTMLCollection

foreign import getElementsByClassName :: forall eff. String -> Element -> Eff (dom :: DOM | eff) HTMLCollection

foreign import setAttribute :: forall eff. String -> String -> Element -> Eff (dom :: DOM | eff) Unit

getAttribute :: forall eff. String -> Element -> Eff (dom :: DOM | eff) (Maybe String)
getAttribute attr = map toMaybe <<< _getAttribute attr

foreign import _getAttribute :: forall eff. String -> Element -> Eff (dom :: DOM | eff) (Nullable String)
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
