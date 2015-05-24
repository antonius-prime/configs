/* This file holds general configurations which are not large enough for their own config files. */

//allow for 'contrib' stuff
load_paths.unshift("chrome://conkeror-contrib/content/");

// Keybinds essentials.
// homepage = "http://conkeror.org/QuickStart";
homepage = "http://www.haskell.org/haskellwiki/Research_papers/Functional_pearls";

session_pref("xpinstall.whitelist.required", false);  

// give me new tabs; open buffers (tabs) in the background
require("new-tabs.js");
require("clicks-in-new-buffer.js");
clicks_in_new_buffer_target = OPEN_NEW_BUFFER_BACKGROUND;
clicks_in_new_buffer_button = 1; //  midclick links in new buffers with

// auto completion in the minibuffer
minibuffer_auto_complete_default = true;

// adblock plus
require("adblockplus.js")
require("/home/antonio/Programs/conkeror/modules/extensions/adblockplus.js")
// Zoom the screen  without blurring the images.
register_user_stylesheet(make_css_data_uri(
    ["* { image-rendering: -moz-crisp-edges; }"]));

// Fight the annoying web develpers focuses.
block_content_focus_change_duration = 40;
require("block-content-focus-change.js");
 
