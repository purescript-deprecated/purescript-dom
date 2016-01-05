module DOM.HTML.Location where

import Control.Monad.Eff (Eff())

import DOM
import DOM.HTML.Types

foreign import hash :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import host :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import hostname :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import href :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import origin :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import pathname :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import port :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import protocol :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import search :: forall eff. Location -> Eff (dom :: DOM | eff) String
