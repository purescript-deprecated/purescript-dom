module DOM.HTML.History where

import Control.Monad.Eff (Eff)
import DOM.HTML.Types (HISTORY, History)
import Data.Foreign (Foreign)
import Data.Newtype (class Newtype)
import Prelude (class Eq, class Ord, Unit)

-- DocumentTitle will set value of `document.title`
newtype DocumentTitle = DocumentTitle String
derive instance eqDocumentTitle :: Eq DocumentTitle
derive instance ordDocumentTitle :: Ord DocumentTitle
derive instance newtypeDocumentTitle :: Newtype DocumentTitle _
newtype Delta = Delta Int
derive instance eqDelta :: Eq Delta
derive instance ordDelta :: Ord Delta
derive instance newtypeDelta :: Newtype Delta _
newtype URL = URL String
derive instance eqURL :: Eq URL
derive instance ordURL :: Ord URL
derive instance newtypeURL :: Newtype URL _

foreign import back :: forall e. History -> Eff (history :: HISTORY | e) Unit
foreign import forward :: forall e. History -> Eff (history :: HISTORY | e) Unit
foreign import go :: forall e. Delta -> History -> Eff (history :: HISTORY | e) Unit
foreign import pushState :: forall e. Foreign -> DocumentTitle -> URL -> History -> Eff (history :: HISTORY | e) Unit
foreign import replaceState :: forall e. Foreign -> DocumentTitle -> URL -> History -> Eff (history :: HISTORY | e) Unit
foreign import state :: forall e. History -> Eff (history :: HISTORY | e) Foreign
