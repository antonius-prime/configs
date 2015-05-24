/* These are my webjumps. */
// Haskell
define_webjump("hayoo", "http://hayoo.fh-wedel.de/?query=%s", $alternative = "http://hayoo.fh-wedel.de/");

// Github
define_webjump("github", "http://github.com/search?q=%s&type=Everything");

// Images 
define_webjump("imagesgoogle", "http://www.google.com/images?q=%s&safe=off", $alternative = "http://www.google.com/imghp?as_q=&safe=off");

// Translator
define_webjump("trans", "http://translate.google.com/translate_t#auto|en|%s");

// Youtube
define_webjump("youtube", "http://www.youtube.com/results?search_query=%s&search=Search");

webjumps.g = webjumps.google;
