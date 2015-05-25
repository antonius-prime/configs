(setq inferior-lisp-program "/usr/bin/sbcl")
(load (expand-file-name "~/quicklisp/slime-helper.el"))

(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))
