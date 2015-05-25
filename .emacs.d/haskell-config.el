(setenv "PATH" (concat (expand-file-name "~/.cabal/bin:") (getenv "PATH")))
(setenv "PATH" (concat "/usr/local/haskell/ghc-7.8.3-x86_64/bin/:" (getenv "PATH")))
(add-to-list 'exec-path "~/.cabal/bin")
(add-to-list 'exec-path "/usr/local/haskell/ghc-7.8.3-x86_64/bin")
(setenv "cabal" "~/.cabal/bin")
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
 '(tool-bar-mode nil)
 '(tool-bar-position (quote right)))

(eval-after-load 'haskell-mode '(progn
  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
  (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
  (define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
  (define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
  (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)
  (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)
  (define-key haskell-mode-map (kbd "C-c C-h") 'hoogle)))
(eval-after-load 'haskell-cabal '(progn
  (define-key haskell-cabal-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
  (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
  (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)))



(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))


(require 'company)
(add-hook 'haskell-mode-hook 'company-mode)
(add-to-list 'company-backends 'company-ghc)

(add-to-list 'load-path "/home/antonio/.emacs.d/structured-haskell-mode/elisp")

(setq shm-program-name "/home/antonio/.emacs.d/structured-haskell-mode")
(require 'shm)
(add-hook 'haskell-mode-hook 'structured-haskell-mode)


(require 'color)
  
(let ((bg (face-attribute 'default :background)))
  (custom-set-faces
   '(company-tooltip ((t (:inherit default :background "gray15" :foreground "gray60"))))
   '(company-scrollbar-bg ((t (:background "gray50"))))
   '(company-scrollbar-fg ((t (:background "gray80"))))
   '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
;   '(company-tooltip-selection ((t (:background "gray30" :foreground "green"))))
   '(company-tooltip-common ((t (:inherit font-lock-constant-face :background "gray15"))))))
;   '(company-tooltip-common ((t (:background "gray45" :foreground "yellow"))))))
;;(add-to-list 'exec-path "/ssh:antonio@10.0.0.84:/opt/ghc/7.8.4/bin")
