module DOM.HTML.HTMLEmbedElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLEmbedElement)

foreign import src :: forall eff. HTMLEmbedElement -> Eff (dom :: DOM | eff) String
foreign import setSrc :: forall eff. String -> HTMLEmbedElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLEmbedElement -> Eff (dom :: DOM | eff) String
foreign import setType :: forall eff. String -> HTMLEmbedElement -> Eff (dom :: DOM | eff) Unit

foreign import width :: forall eff. HTMLEmbedElement -> Eff (dom :: DOM | eff) String
foreign import setWidth :: forall eff. String -> HTMLEmbedElement -> Eff (dom :: DOM | eff) Unit

foreign import height :: forall eff. HTMLEmbedElement -> Eff (dom :: DOM | eff) String
foreign import setHeight :: forall eff. String -> HTMLEmbedElement -> Eff (dom :: DOM | eff) Unit
