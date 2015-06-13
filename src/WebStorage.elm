module WebStorage where
{-| A library for using the localStorage and sessionStorage components of HTML5.

# Local Storage
@docs setLocal getLocal

# Session Storage
@docs setSession getSession
-}

import Native.WebStorage

{-| Set a key to a given value in the local key/value store. Values are stored
as strings, meaning that any non-JavaScript-friendly datatype should be
converted to a string before inserting into the dictionary. Keys must be
strings.

    setLocal : String -> a -> ()
    setLocal = Native.WebStorage.setLocal
-}
setLocal : String -> a -> ()
setLocal = Native.WebStorage.setLocal

{-| Get a value that is associated with a key in the local key/value store. All
values are retrieved as strings (a JavaScript limitation).
-}
getLocal : String -> String
getLocal = Native.WebStorage.getLocal

{-| Set a key to a given value in the session key/value store. Values are stored
as strings, meaning that any non-JavaScript-friendly datatype should be
converted to a string before inserting into the dictionary. Keys must be
strings. Session memory lasts only as long as the tab remains open.
-}
setSession : String -> a -> ()
setSession = Native.WebStorage.setSession

{-| Get a value that is associated with a key in the session key/value store.
All values are retrieved as strings (a JavaScript limitation). Session memory
lasts only as long as the tab remains open.
-}
getSession : String -> String
getSession = Native.WebStorage.getSession
