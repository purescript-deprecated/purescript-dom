module Test.Main where

import Prelude (($), discard)
import Control.Monad.Aff (launchAff, Canceler)
import Control.Monad.Aff.AVar (AVAR)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Class (liftEff)
import Control.Monad.Eff.Console (CONSOLE)
import Control.Monad.Eff.Exception (EXCEPTION)
import DOM (DOM)
import DOM.HTML.Types (WINDOW)
import Data.Enum (fromEnum)
import ExitCodes (ExitCode(Success))
import PhantomJS.Phantom (exit, PHANTOMJS)
import Test.DOM.HTML.Window (domHtmlWindowTests)
import Test.DOM.Node.DOMTokenList (domTokenListTests)
import Test.Unit (describe, it)
import Test.Unit.Assert (assert)
import Test.Unit.Output.Simple (runTest)

main
  :: forall eff
   . Eff (exception :: EXCEPTION, console :: CONSOLE, avar :: AVAR, dom :: DOM, window :: WINDOW, phantomjs :: PHANTOMJS | eff)
         (Canceler (console :: CONSOLE, avar :: AVAR, dom :: DOM, window :: WINDOW, phantomjs :: PHANTOMJS | eff))
main = launchAff $ runTest do
  domHtmlWindowTests
  domTokenListTests

  describe "exit" $ do
    it "should exit" $ do
      liftEff $ exit (fromEnum Success)
      assert "failed to exit phantomjs" false
