module Test.Main where

import Prelude (($), bind)
import DOM (DOM)
import DOM.HTML.Types (WINDOW)
import Data.Enum (fromEnum)
import ExitCodes (ExitCode(Success))
import PhantomJS.Phantom (exit, PHANTOMJS)
import Control.Monad.Aff (Aff, launchAff, Canceler)
import Control.Monad.Eff.Class (liftEff) as EffClass
import Control.Monad.Aff.AVar (AVAR)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Control.Monad.Eff.Exception (EXCEPTION)
import Test.Unit (describe, it)
import Test.Unit.Assert (assert)
import Test.Unit.Output.Simple (runTest)
import Test.DOM.HTML.Window (domHtmlWindowTests)


liftEff :: forall eff a. Eff (phantomjs :: PHANTOMJS | eff) a -> Aff (phantomjs :: PHANTOMJS | eff) a
liftEff = EffClass.liftEff


main
  :: forall eff
   . Eff (err :: EXCEPTION, console :: CONSOLE, avar :: AVAR, dom :: DOM, window :: WINDOW, phantomjs :: PHANTOMJS | eff)
         (Canceler (console :: CONSOLE, avar :: AVAR, dom :: DOM, window :: WINDOW, phantomjs :: PHANTOMJS | eff))
main = launchAff $ runTest do
  domHtmlWindowTests

  describe "exit" $ do
    it "should exit" $ do
      liftEff $ exit (fromEnum Success)
      assert "failed to exit phantomjs" false
