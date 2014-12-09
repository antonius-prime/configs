(load  "~/.emacs.d/general-config.el")
(load  "~/.emacs.d/packmanager-config.el")
(load  "~/.emacs.d/bindings-config.el")
(load  "~/.emacs.d/haskell-config.el")
(load  "~/.emacs.d/clisp-config.el")
(load  "~/.emacs.d/mu4e-config.el")
(load  "~/.emacs.d/imaxima-config.el")
(load  "~/.emacs.d/python-config.el")
(load  "~/.emacs.d/javascript-config.el")

(add-to-list 'load-path "/home/antonio/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/antonio/.emacs.d//ac-dict")
(ac-config-default)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-ghc-show-info t)
 '(custom-safe-themes (quote ("1dec44213e780f4220cab0b45ae60063a1fecfa26a678ccce07fca4b30b92dc5" default)))
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote cabal-repl))
 '(haskell-tags-on-save t)
 '(menu-bar-mode nil)
 '(tool-bar-mode nil)
 '(tool-bar-position (quotne right)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
