module Test.Main where

import Prelude

import Control.Monad.Aff.AVar (AVAR)
import Control.Monad.Aff.Console (CONSOLE)
import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.HTML.Types (WINDOW)
import Test.DOM.HTML.Document (domHtmlDocumentTests)
import Test.DOM.HTML.Window (domHtmlWindowTests)
import Test.DOM.Node.DOMTokenList (domTokenListTests)
import Test.Unit.Console (TESTOUTPUT)
import Test.Unit.Main (runTest)

main :: forall eff. Eff (console :: CONSOLE, testOutput :: TESTOUTPUT, avar :: AVAR, dom :: DOM, window :: WINDOW | eff) Unit
main = runTest do
  domHtmlDocumentTests
  domHtmlWindowTests
  domTokenListTests
