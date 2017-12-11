import Data.Text.IO as Text

main = Text.readFile "large.bin" >> return ()
