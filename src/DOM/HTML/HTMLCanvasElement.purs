module DOM.HTML.HTMLCanvasElement where

import Prelude (Unit)

import Control.Monad.Effect (Effect)

import DOM.HTML.Types (HTMLCanvasElement)

-- typedef (CanvasRenderingContext2D or WebGLRenderingContext) RenderingContext;

foreign import width :: HTMLCanvasElement -> Effect Int
foreign import setWidth :: Int -> HTMLCanvasElement -> Effect Unit

foreign import height :: HTMLCanvasElement -> Effect Int
foreign import setHeight :: Int -> HTMLCanvasElement -> Effect Unit

--   RenderingContext? getContext(DOMString contextId, any... arguments);

--   DOMString toDataURL(optional DOMString type, any... arguments);
--   void toBlob(FileCallback? _callback, optional DOMString type, any... arguments);
-- };
