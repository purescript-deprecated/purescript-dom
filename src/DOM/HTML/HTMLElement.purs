module DOM.HTML.HTMLElement
  ( title
  , setTitle
  , lang
  , setLang
  , dir
  , setDir
  , className
  , setClassName
  , classList
  , hidden
  , setHidden
  , tabIndex
  , setTabIndex
  , draggable
  , setDraggable
  , contentEditable
  , setContentEditable
  , isContentEditable
  , spellcheck
  , setSpellcheck
  , click
  , focus
  , blur
  , getBoundingClientRect
  , DOMRect
  , offsetParent
  , offsetTop
  , offsetLeft
  , offsetWidth
  , offsetHeight
  ) where

import Prelude

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.HTML.Types (HTMLElement)
import DOM.Node.Types (DOMTokenList, Element)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

foreign import title :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) String
foreign import setTitle :: forall eff. String -> HTMLElement -> Eff (dom :: DOM | eff) Unit

foreign import lang :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) String
foreign import setLang :: forall eff. String -> HTMLElement -> Eff (dom :: DOM | eff) Unit

foreign import dir :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) String
foreign import setDir :: forall eff. String -> HTMLElement -> Eff (dom :: DOM | eff) Unit

foreign import className :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) String
foreign import setClassName :: forall eff. String -> HTMLElement -> Eff (dom :: DOM | eff) Unit

foreign import classList :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) DOMTokenList

foreign import hidden :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Boolean
foreign import setHidden :: forall eff. Boolean -> HTMLElement -> Eff (dom :: DOM | eff) Unit

foreign import tabIndex :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Int
foreign import setTabIndex :: forall eff. Int -> HTMLElement -> Eff (dom :: DOM | eff) Unit

foreign import draggable :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Boolean
foreign import setDraggable :: forall eff. Boolean -> HTMLElement -> Eff (dom :: DOM | eff) Unit

foreign import contentEditable :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) String
foreign import setContentEditable :: forall eff. String -> HTMLElement -> Eff (dom :: DOM | eff) Unit
foreign import isContentEditable :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Boolean

foreign import spellcheck :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Boolean
foreign import setSpellcheck :: forall eff. Boolean -> HTMLElement -> Eff (dom :: DOM | eff) Unit

foreign import click :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Unit
foreign import focus :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Unit
foreign import blur :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Unit

type DOMRect =
  { top :: Number
  , right :: Number
  , bottom :: Number
  , left :: Number
  , width :: Number
  , height :: Number
  }

foreign import getBoundingClientRect :: forall eff . HTMLElement -> Eff (dom :: DOM | eff) DOMRect

foreign import _offsetParent :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) (Nullable Element)

offsetParent :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) (Maybe Element)
offsetParent = map toMaybe <<< _offsetParent

foreign import offsetTop :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Number
foreign import offsetLeft :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Number
foreign import offsetWidth :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Number
foreign import offsetHeight :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Number
