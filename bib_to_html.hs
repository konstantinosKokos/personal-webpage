import Text.CSL as CSL
import qualified Data.Text as T

pref = "---\n Title: Publications\n---\n<ul class=\"paper-list\">"
suf = "</ul>"

main :: IO ()
main = do
  refs <- readBiblioFile (\x -> True) "publications/pubs.bib"
  csl <- readCSLFile Nothing "csl/html.csl"
  let result = processBibliography procOpts csl refs
  putStrLn $ pref ++ (unlines (map (T.unpack . renderPlain) result)) ++ suf
