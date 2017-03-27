module DOM.HTML.Window
  ( document
  , navigator
  , location
  , history
  , innerWidth
  , innerHeight
  , alert
  , confirm
  , moveBy
  , moveTo
  , open
  , outerHeight
  , outerWidth
  , print
  , prompt
  , promptDefault
  , resizeBy
  , resizeTo
  , screenX
  , screenY
  , scroll
  , scrollBy
  , scrollX
  , scrollY
  , url
  , localStorage
  , sessionStorage
  ) where

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.HTML.Types (ALERT, CONFIRM, HISTORY, HTMLDocument, History, Location, Navigator, PROMPT, WINDOW, Window, URL)
import DOM.WebStorage.Types (Storage)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Prelude (Unit, (<$>))

foreign import document :: forall eff. Window -> Eff (dom :: DOM | eff) HTMLDocument

foreign import navigator :: forall eff. Window -> Eff (dom :: DOM | eff) Navigator

foreign import location :: forall eff. Window -> Eff (dom :: DOM | eff) Location

foreign import history :: forall e. Window -> Eff (history :: HISTORY | e) History

foreign import url :: forall eff. Window -> Eff (dom :: DOM | eff) URL

foreign import innerWidth :: forall eff. Window -> Eff (dom :: DOM | eff) Int

foreign import innerHeight :: forall eff. Window -> Eff (dom :: DOM | eff) Int

foreign import alert :: forall eff. String -> Window -> Eff (alert :: ALERT | eff) Unit

foreign import confirm :: forall eff. String -> Window -> Eff (confirm :: CONFIRM | eff) Boolean

foreign import moveBy :: forall eff. Int -> Int -> Window -> Eff (window :: WINDOW | eff) Unit

foreign import moveTo :: forall eff. Int -> Int -> Window -> Eff (window :: WINDOW | eff) Unit

open :: forall eff. String -> String -> String -> Window -> Eff (window :: WINDOW | eff) (Maybe Window)
open window url' name features = toMaybe <$> _open window url' name features

foreign import _open
  :: forall eff
   . String
  -> String
  -> String
  -> Window
  -> Eff (window :: WINDOW | eff) (Nullable Window)

foreign import outerHeight :: forall eff. Window -> Eff (dom :: DOM | eff) Int

foreign import outerWidth :: forall eff. Window -> Eff (dom :: DOM | eff) Int

foreign import print :: forall eff. Window -> Eff (window :: WINDOW | eff) Unit

prompt :: forall eff. String -> Window -> Eff (prompt :: PROMPT | eff) (Maybe String)
prompt msg window = toMaybe <$> _prompt msg "" window

promptDefault :: forall eff. String -> String -> Window -> Eff (prompt :: PROMPT | eff) (Maybe String)
promptDefault msg defaultText window = toMaybe <$> _prompt msg defaultText window

foreign import _prompt :: forall eff. String -> String -> Window -> Eff (prompt :: PROMPT | eff) (Nullable String)

foreign import resizeBy :: forall eff. Int -> Int -> Window -> Eff (window :: WINDOW | eff) Unit

foreign import resizeTo :: forall eff. Int -> Int -> Window -> Eff (window :: WINDOW | eff) Unit

foreign import screenX :: forall eff. Window -> Eff (dom :: DOM | eff) Int

foreign import screenY :: forall eff. Window -> Eff (dom :: DOM | eff) Int

foreign import scroll :: forall eff. Int -> Int -> Window -> Eff (window :: WINDOW | eff) Unit

foreign import scrollBy :: forall eff. Int -> Int -> Window -> Eff (window :: WINDOW | eff) Unit

foreign import scrollX :: forall eff. Window -> Eff (dom :: DOM | eff) Int

foreign import scrollY :: forall eff. Window -> Eff (dom :: DOM | eff) Int

foreign import localStorage :: forall eff. Window -> Eff (dom :: DOM | eff) Storage

foreign import sessionStorage :: forall eff. Window -> Eff (dom :: DOM | eff) Storage
