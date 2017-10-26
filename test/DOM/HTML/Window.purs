module Test.DOM.HTML.Window where

import Prelude

import Control.Monad.Eff.Class (liftEff)
import DOM (DOM)
import DOM.HTML (window)
import DOM.HTML.Types (WINDOW)
import DOM.HTML.Window as Window
import Data.Maybe (isJust)
import Test.Unit (TestSuite, describe, it)
import Test.Unit.Assert (shouldEqual)

domHtmlWindowTests :: forall eff. TestSuite (dom :: DOM, window :: WINDOW | eff)
domHtmlWindowTests = do
  describe "innerHeight" do
    it "should return the default inner height" do
      windowHeight <- liftEff $ Window.innerHeight =<< window
      windowHeight `shouldEqual` 300

  describe "innerWidth" do
    it "should return the default inner width" do
      windowWidth <- liftEff $ Window.innerWidth =<< window
      windowWidth `shouldEqual` 400

  describe "screenX" do
    it "should get the X coordinate of the window" do
      x <- liftEff $ Window.screenX =<< window
      x `shouldEqual` 0

  describe "screenY" do
    it "should get the Y coordinate of the window" do
      y <- liftEff $ Window.screenY =<< window
      y `shouldEqual` 0

  describe "open" do
    it "should open a new window" do
      newWindow' <- liftEff $ Window.open "about:blank" "foobar" "" =<< window
      isJust newWindow' `shouldEqual` true
