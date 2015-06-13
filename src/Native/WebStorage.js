// WebStorage.js
// Native JavaScript for the web-storage elm library.

// Authored by Mitch Spradlin
// 2015-06-12

// Setup for Elm
Elm.Native = Elm.Native || {};
Elm.Native.WebStorage = Elm.Native.WebStorage || {};

// If not supported by the browser, quit early
if(typeof(Storage) === "undefined") {
    console.log("WebStorage not supported by your browser.");
    return;
}

// The content
Elm.Native.WebStorage.make = function(localRuntime) {
    'use strict';

    // Attempt to short-circuit
    if ('values' in Elm.Native.WebStorage) {
        return Elm.Native.WebStorage.values;
    }

    // Set a key/value pair in Local Storage
    // Note that the key must be a string and the val must be able to be
    // represented by a string
    function setLocal(key, val) {
        localStorage.setItem(key, val);
        return;
    }

    // Maybe get a value from Local Storage with the provided key
    function getLocal(key) {
        var val = localStorage.getItem(key);
        return val;
    }

    // Set a key/value pair in Session Storage
    function setSession(key, val) {
        sessionStorage.setItem(key, val);
        return;
    }

    // Get a value from Session Storage with the provided key
    function getSession(key) {
        var val = sessionStorage.getItem(val);
        return val;
    }

    Elm.Native.WebStorage.values = {
        setLocal   : F2(setLocal),
        getLocal   : F1(getLocal),
        setSession : F2(setSession),
        getSession : F1(getSession)
    }
    return localRuntime.Native.WebStorage.values = Elm.Native.WebStorage.values;
}
