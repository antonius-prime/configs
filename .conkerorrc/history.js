/* This file handles configurations about browsing history. */

// History autocomplete. -------------------------------------------------------------------------
url_completion_use_history = true; 
url_completion_use_bookmarks = true;

// ------------------------------------------------------------------------------------------------

// Clear history after 2 day ----------------------------------------------------------------------
session_pref('browser.history_expire_days', 2);

// ------------------------------------------------------------------------------------------------

// Prompt for urls from browsing history. ---------------------------------------------------------
define_browser_object_class(
    "history-url", "Prompts the user to choose a url from own browsing history",
    function (I, prompt) {
        check_buffer (I.buffer, content_buffer);
        var result = yield I.buffer.window.minibuffer.read_url(
            $prompt = prompt,  $use_webjumps = false, $use_history = true, $use_bookmarks = false);
        yield co_return (result);
    },
    $hint = "choose url from history");

interactive("find-url-from-history",
            "Find a page from history in the current buffer",
            "find-url",
            $browser_object = browser_object_history_url);

interactive("find-url-from-history-new-buffer",
            "Find a page from history in the current buffer",
            "find-url-new-buffer",
            $browser_object = browser_object_history_url);

// ------------------------------------------------------------------------------------------------

// Command to clear the browsing history. ---------------------------------------------------------
function history_clear () {
    var history = Cc["@mozilla.org/browser/nav-history-service;1"]
        .getService(Ci.nsIBrowserHistory);
    history.removeAllPages();
}

interactive("history-clear",
    "Clear the history.",
    history_clear);

// ------------------------------------------------------------------------------------------------

