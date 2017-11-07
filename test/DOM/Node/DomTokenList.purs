module Test.DOM.Node.DOMTokenList where

import Prelude

import Control.Monad.Eff.Class (liftEff)
import DOM (DOM)
import DOM.HTML (window)
import DOM.HTML.Document (body)
import DOM.HTML.HTMLElement (classList, className, setClassName)
import DOM.HTML.Window (document)
import DOM.Node.ClassList as CL
import Data.Maybe (Maybe(..), fromMaybe)
import Test.Unit (TestSuite, describe, it)
import Test.Unit.Assert (shouldEqual)

domTokenListTests :: forall eff. TestSuite (dom :: DOM | eff)
domTokenListTests = do
  describe "DOMTokenList of classList" do
    it "contains a token" do
      body' <- liftEff $ window >>= document >>= body
      result <- case body' of
        Just body'' -> liftEff do
          _ <- setClassName "a b c" body''
          list <- classList body''
          CL.contains list "a"
        Nothing -> pure false
      result `shouldEqual` true

    it "adds a token" do
      body' <- liftEff $ window >>= document >>= body
      result <- case body' of
        Just body'' -> liftEff do
          -- clear class names, first
          _ <- setClassName "" body''
          list <- classList body''
          _ <- CL.add list "a"
          className body''
        Nothing -> pure "failed"
      result `shouldEqual` "a"

    it "removes a token" do
      body' <- liftEff $ window >>= document >>= body
      result <- case body' of
        Just body'' -> liftEff do
          _ <- setClassName "a b c" body''
          list <- classList body''
          _ <- CL.remove list "b"
          resultA <- CL.contains list "a"
          resultB <- CL.contains list "b"
          resultC <- CL.contains list "c"
          -- Only "b" should be removed
          pure $ resultA && not resultB && resultC
        Nothing -> pure false
      result `shouldEqual` true

    it "toggles a token by removing its value" do
      body' <- liftEff $ window >>= document >>= body
      result <- case body' of
        Just body'' -> liftEff do
          _ <- setClassName "a b c" body''
          list <- classList body''
          _ <- CL.toggle list "c"
          className body''
        Nothing -> pure "failed"
      result `shouldEqual` "a b"

    it "toggles a token by adding its value" do
      body' <- liftEff $ window >>= document >>= body
      result <- case body' of
        Just body'' -> liftEff do
          _ <- setClassName "a b" body''
          list <- classList body''
          _ <- CL.toggle list "c"
          className body''
        Nothing -> pure "failed"
      result `shouldEqual` "a b c"

    it "toggles a token by forcing to add its value" do
      body' <- liftEff $ window >>= document >>= body
      result <- case body' of
        Just body'' -> liftEff do
          _ <- setClassName "a b" body''
          list <- classList body''
          _ <- CL.toggleForce list "c" true
          className body''
        Nothing -> pure "failed"
      result `shouldEqual` "a b c"

    it "toggles a token by forcing to add (but not to remove) its value" do
      body' <- liftEff $ window >>= document >>= body
      result <- case body' of
        Just body'' -> liftEff do
          _ <- setClassName "a b c" body''
          list <- classList body''
          _ <- CL.toggleForce list "c" true
          className body''
        Nothing -> pure "failed"
      result `shouldEqual` "a b c"

    it "toggles a token by forcing to remove its value" do
      body' <- liftEff $ window >>= document >>= body
      result <- case body' of
        Just body'' -> liftEff do
          _ <- setClassName "a b c" body''
          list <- classList body''
          _ <- CL.toggleForce list "c" false
          className body''
        Nothing -> pure "failed"
      result `shouldEqual` "a b"

    it "toggles a token by forcing to remove (but not to add) its value" do
      body' <- liftEff $ window >>= document >>= body
      result <- case body' of
        Just body'' -> liftEff do
          _ <- setClassName "a b" body''
          list <- classList body''
          _ <- CL.toggleForce list "c" false
          className body''
        Nothing -> pure "failed"
      result `shouldEqual` "a b"

    it "returns an item if available" do
      body' <- liftEff $ window >>= document >>= body
      result <- case body' of
        Just body'' -> liftEff do
          _ <- setClassName "a b c" body''
          list <- classList body''
          CL.item list 2
        Nothing -> pure Nothing
      (fromMaybe "not found" result) `shouldEqual` "c"

    it "returns not an item if it's not available" do
      body' <- liftEff $ window >>= document >>= body
      result <- case body' of
        Just body'' -> liftEff do
          _ <- setClassName "a b c" body''
          list <- classList body''
          CL.item list 5
        Nothing -> pure Nothing
      (fromMaybe "not found" result) `shouldEqual` "not found"
