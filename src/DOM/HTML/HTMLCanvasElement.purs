module DOM.HTML.HTMLCanvasElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import DOM (DOM)
import DOM.HTML.Types (HTMLCanvasElement)

-- typedef (CanvasRenderingContext2D or WebGLRenderingContext) RenderingContext;

foreign import width :: forall eff. HTMLCanvasElement -> Eff (dom :: DOM | eff) Int
foreign import setWidth :: forall eff. Int -> HTMLCanvasElement -> Eff (dom :: DOM | eff) Unit

foreign import height :: forall eff. HTMLCanvasElement -> Eff (dom :: DOM | eff) Int
foreign import setHeight :: forall eff. Int -> HTMLCanvasElement -> Eff (dom :: DOM | eff) Unit

--   RenderingContext? getContext(DOMString contextId, any... arguments);

--   DOMString toDataURL(optional DOMString type, any... arguments);
--   void toBlob(FileCallback? _callback, optional DOMString type, any... arguments);
-- };
