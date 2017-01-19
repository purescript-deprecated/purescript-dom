module DOM.HTML.History where

import Control.Monad.Eff (Eff)
import DOM.HTML.Types (HISTORY, History, Window)
import Prelude (Unit)

-- DocumentTitle will set value of `document.title`
newtype DocumentTitle = DocumentTitle String
newtype Delta = Delta Int
newtype URL = URL String -- Unsure how to better type this.

foreign import back :: forall e. History -> Eff (history :: HISTORY | e) Unit
foreign import forward :: forall e. History -> Eff (history :: HISTORY | e) Unit
foreign import go :: forall e. History -> Delta -> Eff (history :: HISTORY | e) Unit
foreign import pushState :: forall a e. History -> a -> DocumentTitle -> URL -> Eff (history :: HISTORY | e) Unit
foreign import replaceState :: forall a e. History -> a -> DocumentTitle -> URL -> Eff (history :: HISTORY | e) Unit
foreign import state :: forall a e. History -> Eff (history :: HISTORY | e) a
