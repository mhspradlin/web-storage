-- Tests.elm
-- A tests file for the web-storage Elm library.

-- Authored by Mitch Spradlin

module Tests where

import WebStorage
import Graphics.Element

--Tests that we can set and retrieve key/values from Local Storage
testLocal : Graphics.Element.Element
testLocal =
    let toss = WebStorage.setLocal "key1" "val1"
        get = WebStorage.getLocal "key1"
    in case get of
        "val1" -> Graphics.Element.empty

main : Graphics.Element.Element
main = 
