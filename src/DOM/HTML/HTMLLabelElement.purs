module DOM.HTML.HTMLLabelElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import Data.Nullable (Nullable)

import DOM (DOM)
import DOM.HTML.Types (HTMLLabelElement, HTMLFormElement, HTMLElement)

foreign import form :: forall eff. HTMLLabelElement -> Eff (dom :: DOM | eff) (Nullable HTMLFormElement)

foreign import htmlFor :: forall eff. HTMLLabelElement -> Eff (dom :: DOM | eff) String
foreign import setHtmlFor :: forall eff. String -> HTMLLabelElement -> Eff (dom :: DOM | eff) Unit

foreign import control :: forall eff. HTMLLabelElement -> Eff (dom :: DOM | eff) (Nullable HTMLElement)
