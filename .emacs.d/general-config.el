;; NO FRILLS
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))
;(setq inhibit-startup-screen t)
;; NO JUNK
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
      backup-directory-alist `((".*" . ,temporary-file-directory)))

;; Y-N
(fset 'yes-or-no-p 'y-or-n-p)

;; encoding
(prefer-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;; color theme
;;(add-hook 'after-init-hook 
;;      (lambda () (load-theme 'cyberpunk t)))
;;(require 'emacs-color-themes)

;; dir access
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))
;;(add-to-list 'load-path "~/.emacs.d")

;; ido-mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1) 

;; powerline
;; (require 'powerline)
;; (powerline-default-theme)

;; programming hookers
(add-hook 'prog-mode-hook 'subword-mode)
;(add-hook 'prog-mode-hook 'paredit-everywhere-mode)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; enable pretty lambdas and stuff
(global-prettify-symbols-mode 1)
