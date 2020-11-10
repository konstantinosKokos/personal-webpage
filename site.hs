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

    match "pages/*" $ do
      route $ (gsubRoute "pages/" (const ""))
      compile $ do
          getResourceBody
              >>= loadAndApplyTemplate "templates/main.html" defaultContext
              >>= relativizeUrls
              
    match "templates/*" $ compile templateCompiler
