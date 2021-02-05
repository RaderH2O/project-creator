module Main where
import System.Environment
import ProjectCreator.ProjectCreator

commands :: [(String, [String] -> IO ())]
commands = [ ("py", createPython),
             ("hs", createHaskell),
             ("html", createStaticSite) ]

fromJust (Just a) = a

main :: IO ()
main = do
    args <- getArgs
    fromJust $ (lookup (head args) commands) <*> (Just $ tail args)