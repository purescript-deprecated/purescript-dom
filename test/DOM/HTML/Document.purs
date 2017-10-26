module Test.DOM.HTML.Document where

import Prelude

import Control.Monad.Eff.Class (liftEff)
import DOM (DOM)
import DOM.HTML (window)
import DOM.HTML.Document (ReadyState(..), readyState)
import DOM.HTML.Window (document)
import Test.Unit (TestSuite, describe, it)
import Test.Unit.Assert (shouldEqual)

domHtmlDocumentTests :: forall eff. TestSuite (dom :: DOM | eff)
domHtmlDocumentTests = do
  describe "readyState" do
    it "should return a sensible readyState" do
      rs <- liftEff $ readyState =<< document =<< window
      rs `shouldEqual` Complete
