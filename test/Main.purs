module Test.Main where

import Prelude

import Control.Monad.Aff.AVar (AVAR)
import Control.Monad.Aff.Console (CONSOLE)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Timer (TIMER, setTimeout)
import DOM (DOM)
import DOM.HTML.Types (WINDOW)
import Test.DOM.HTML.Document (domHtmlDocumentTests)
import Test.DOM.HTML.Window (domHtmlWindowTests)
import Test.DOM.Node.DOMTokenList (domTokenListTests)
import Test.Unit.Console (TESTOUTPUT)
import Test.Unit.Main (runTest, exit)

main :: Eff (console :: CONSOLE, testOutput :: TESTOUTPUT, avar :: AVAR, dom :: DOM, window :: WINDOW, timer :: TIMER) Unit
main = do
  runTest do
    domHtmlDocumentTests
    domHtmlWindowTests
    domTokenListTests
  void $ setTimeout 100 $ exit 0
