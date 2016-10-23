module Test.DOM.HTML.Window where

import Prelude (Unit, bind, (<<<))
import DOM (DOM)
import DOM.HTML (window)
import DOM.HTML.Types (WINDOW)
import DOM.HTML.Window
import Control.Monad.Free (Free)
import Control.Monad.Aff (Aff)
import Control.Monad.Aff.Console (CONSOLE)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Class (liftEff) as EffClass
import Test.Unit (TestF, describe, it)
import Test.Unit.Assert (shouldEqual)
import Data.Maybe (isJust)
import Data.Traversable (class Traversable, sequence)


liftEff :: forall eff a. Eff eff a -> Aff eff a
liftEff = EffClass.liftEff

liftSeq :: forall eff m a. Traversable m => m (Eff eff a) -> Aff eff (m a)
liftSeq = liftEff <<< sequence

domHtmlWindowTests
  :: forall eff. Free (TestF (dom :: DOM, console :: CONSOLE, window :: WINDOW | eff)) Unit
domHtmlWindowTests = do
  describe "innerHeight" do
    it "should return the default inner height" do
      windowHeight <- liftEff do
        window' <- window
        innerHeight window'
      windowHeight `shouldEqual` 300

  describe "innerWidth" do
    it "should return the default inner width" do
      windowWidth <- liftEff do
        window' <- window
        innerWidth window'
      windowWidth `shouldEqual` 400

  describe "screenX" do
    it "should get the X coordinate of the window" do
      x <- liftEff do
        window' <- window
        screenX window'
      x `shouldEqual` 0

  describe "screenY" do
    it "should get the Y coordinate of the window" do
      y <- liftEff do
        window' <- window
        screenY window'
      y `shouldEqual` 0

  describe "open" do
    it "should open a new window" do
      newWindow' <- liftEff do
        window' <- window
        open "about:blank" "foobar" "" window'
      isJust newWindow' `shouldEqual` true
