module ProjectCreator.ProjectCreator where
import System.Directory

createPython :: [String] -> IO ()
createPython (projectName:_) = createDirectory projectName >> writeFile (projectName ++ "/main.py") ""

createHaskell :: [String] -> IO ()
createHaskell (projectName:_) = createDirectory projectName >> writeFile (projectName ++ "/Main.hs") ""

createStaticSite :: [String] -> IO ()
createStaticSite (projectName:_) = createDirectory projectName >> writeFile (projectName ++ "/index.html") "<html>\n\t<head>\n\t\t<link href=\"style.css\" rel=\"stylesheet\" />\n\t</head>\n\t<body>\n\t\t<script src=\"main.js\"></script>\n\t</body>\n</html>"
                                >> writeFile (projectName ++ "/main.js") "" >> writeFile (projectName ++ "/style.css") ""