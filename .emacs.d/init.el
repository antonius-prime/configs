(add-to-list 'load-path "/home/antonio/.emacs.d/lisp/")

(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "/home/antonio/.emacs.d/lisp/ac-dict")


(load  "~/.emacs.d/general-config.el")
(load  "~/.emacs.d/packmanager-config.el")
(load  "~/.emacs.d/bindings-config.el")
(load  "~/.emacs.d/haskell-config.el")
(load  "~/.emacs.d/clisp-config.el")
(load  "~/.emacs.d/mu4e-config.el")
(load  "~/.emacs.d/imaxima-config.el")
(load  "~/.emacs.d/python-config.el")
(load  "~/.emacs.d/javascript-config.el")
(load  "~/.emacs.d/pretty-lambda.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-ghc-show-info t)
 '(custom-safe-themes
   (quote
    ("0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "46fd293ff6e2f6b74a5edf1063c32f2a758ec24a5f63d13b07a20255c074d399" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "1dec44213e780f4220cab0b45ae60063a1fecfa26a678ccce07fca4b30b92dc5" default)))
 '(exec-path
   (quote
    ("/usr/local/haskell/ghc-7.8.3-x86_64/bin" "~/.cabal/bin" "/opt/happy/1.19.3/bin/happy" "/home/antonio/.cabal/bin" "/usr/local/sbin" "/usr/local/bin" "/usr/sbin" "/usr/bin" "/sbin" "/bin" "/usr/games" "/usr/local/games" "/home/antonio/.rvm/bin" "/usr/local/libexec/emacs/24.4/x86_64-unknown-linux-gnu" nil)))
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote cabal-repl))
 '(haskell-tags-on-save t)
 '(menu-bar-mode nil)
 '(safe-local-variable-values
   (quote
    ((haskell-indentation-where-post-offset . 2)
     (haskell-indentation-where-pre-offset . 2)
     (haskell-indentation-ifte-offset . 4)
     (haskell-indentation-left-offset . 4)
     (haskell-indentation-starter-offset . 1)
     (haskell-indentation-layout-offset . 4))))
 '(tool-bar-mode nil)
 '(tool-bar-position (quote right)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-scrollbar-bg ((t (:background "gray50"))))
 '(company-scrollbar-fg ((t (:background "gray80"))))
 '(company-tooltip ((t (:inherit default :background "gray15" :foreground "gray60"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face :background "gray15"))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face)))))
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")
;;/usr/local/share/emacs/site-lisp/mu4e
