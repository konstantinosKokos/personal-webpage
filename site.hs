--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid ((<>))
import           Control.Monad (liftM)
import           Hakyll
import           Text.CSL  as CSL
--------------------------------------------------------------------------------
main :: IO ()
main = hakyll $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "js/*" $ do
      route idRoute
      compile copyFileCompiler

    match "favicon.ico" $ do
      route idRoute
      compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match "talks/*" $ do
        route $ setExtension "html"
        compile $ pandocCompiler
              >>= loadAndApplyTemplate "templates/talk.html" talkCtx
              >>= loadAndApplyTemplate "templates/main.html" talkCtx
              >>= relativizeUrls

    create ["talks.html"] $ do
        route idRoute
        compile $ do
            talks <- recentFirst =<< loadAll "talks/*"
            let archiveCtx =
                    listField "talks" talkCtx (return talks) `mappend`
                    constField "title" "Test"            `mappend`
                    defaultContext

            makeItem ""
                >>= loadAndApplyTemplate "templates/talks.html" archiveCtx
                >>= loadAndApplyTemplate "templates/main.html" archiveCtx
                >>= relativizeUrls

    match "pages/index.html" $ do
      route $ (gsubRoute "pages/" (const ""))
      compile $ do
        talks <- fmap (take 4) . recentFirst =<< loadAll "talks/*"
        let indexCtx =
                listField "talks" talkCtx (return talks) `mappend`
                defaultContext

        getResourceBody
            >>= applyAsTemplate indexCtx
            >>= loadAndApplyTemplate "templates/main.html" indexCtx
            >>= relativizeUrls

      match "pages/*" $ do
        route $ (gsubRoute "pages/" (const ""))
        compile $ do
               getResourceBody
                   >>= loadAndApplyTemplate "templates/main.html" defaultContext
                   >>= relativizeUrls

    match "templates/*" $ compile templateCompiler

--------------------------------------------------------------------------------
talkCtx :: Context String
talkCtx =
    dateField "date" "%B %e, %Y" `mappend`
    defaultContext
