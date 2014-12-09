;; associate files
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))

;; highlight hookers
(add-hook 'js-mode-hook 'js2-mode)
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)
;; (add-hook 'ac-js2-mode 'company-mode)
;; (add-hook 'ac-js2-mode 'ac-js2-company)
(setq js2-highlight-level 3)

;; non-lisp paredit
(defun my-paredit-nonlisp ()
  "Turn on paredit mode for non-lisps."
  (interactive)
  (set (make-local-variable 'paredit-space-for-delimiter-predicates)
       '((lambda (endp delimiter) nil)))
  (paredit-mode 1))

(add-hook 'js2-mode-hook 'my-paredit-nonlisp) ;use with the above function

(eval-after-load "js2-mode"
  '(progn
     (define-key js-mode-map "{" 'paredit-open-curly)
     (define-key js-mode-map "}" 'paredit-close-curly-and-newline)
     (define-key js-mode-map "]" 'paredit-open-curly)
     (define-key js-mode-map "[" 'paredit-close-curly-and-newline)))

;; skewer
(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)
