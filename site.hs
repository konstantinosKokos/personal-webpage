{-# LANGUAGE OverloadedStrings #-}

import Hakyll
import qualified Data.Text as Text
import Text.CSL as CSL
import Control.Monad (liftM)

main :: IO ()
main = hakyll $ do
    match "images/*" $ do
        route idRoute
        compile copyFileCompiler

    match "js/*" $ do
        route idRoute
        compile copyFileCompiler

    match "favicon.ico" $ do
        route idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route idRoute
        compile compressCssCompiler

    match "cv/cv.pdf" $ do
        route $ constRoute "cv.pdf"
        compile copyFileCompiler

    match "talks/*" $ do
        route $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/talk.html" talkCtx
            >>= loadAndApplyTemplate "templates/main.html" talkCtx
            >>= relativizeUrls

    match "pubs/*" $ do
        route idRoute
        compile pandocCompiler

    create ["talks.html"] $ do
        route idRoute
        compile $ do
            talks <- recentFirst =<< loadAll "talks/*"
            let archiveCtx =
                    listField "talks" talkCtx (return talks) <>
                    constField "title" "Talks" <>
                    defaultContext
                    
            makeItem "" >>= loadAndApplyTemplate "templates/talks.html" archiveCtx
                        >>= loadAndApplyTemplate "templates/main.html" archiveCtx
                        >>= relativizeUrls
                
    create ["publications.html"] $ do
        route idRoute
        compile $ do
            pubs <- recentFirst =<< loadAll "pubs/*"
            let archiveCtx = 
                    listField "pubs" pubCtx (return pubs) <>
                    constField "title" "Publications" <>
                    defaultContext
                
            makeItem "" >>= loadAndApplyTemplate "templates/pubs.html" archiveCtx
                        >>= loadAndApplyTemplate "templates/main.html" archiveCtx
                        >>= relativizeUrls

    match "pages/index.html" $ do
        route $ gsubRoute "pages/" (const "")
        compile $ do
            talks <- fmap (take 4) . recentFirst =<< loadAll "talks/*"
            let indexCtx =
                    listField "talks" talkCtx (return talks) <>
                    defaultContext

            getResourceBody >>= applyAsTemplate indexCtx
                             >>= loadAndApplyTemplate "templates/main.html" indexCtx
                             >>= relativizeUrls

    match "pages/*" $ do
        route $ gsubRoute "pages/" (const "")
        compile $ getResourceBody
            >>= loadAndApplyTemplate "templates/main.html" defaultContext
            >>= relativizeUrls

    match "templates/*" $ compile templateCompiler

talkCtx :: Context String
talkCtx =
    dateField "date" "%B %e, %Y" <>
    defaultContext
    

pubCtx :: Context String
pubCtx = 
    dateField "date" "%B %Y" <>
    defaultContext
