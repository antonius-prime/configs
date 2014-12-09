(provide 'bindings)

;;browse kill ring (visual paste)
(global-set-key (kbd "M-y") 'browse-kill-ring)
;;make C-] and M-] cut and copy respectively
(global-set-key (kbd "C-]") 'kill-region)
(global-set-key (kbd "M-]") 'kill-ring-save)
;; undo
(global-set-key (kbd "C-M-_") 'undo-tree-undo)
(global-set-key (kbd "C-_") 'undo-tree-undo)

(global-set-key (kbd "M-h") 'help-command)
;(define-key org-mode-map (kbd "M-h") 'help-command)

(global-set-key (kbd "C-\\") 'backward-kill-word)
(define-key ido-file-completion-map (kbd "C-\\") 'backward-kill-word)

(global-set-key (kbd "C-x C-k") 'kill-region)
;;set the mark
(global-set-key (kbd "C-SPC") 'set-mark-command)
;;repeat previous command
(global-set-key (kbd "M-'") 'repeat)

;;scroll other window
(global-set-key (kbd "C-M-]") 'scroll-other-window)
(global-set-key (kbd "C-M-[") 'scroll-other-window-down)

;;fast vertical naviation
(global-set-key (kbd "M-U") (lambda () (interactive) (forward-line -10)))
(global-set-key (kbd "M-D") (lambda () (interactive) (forward-line 10)))
(global-set-key (kbd "M-p") 'outline-previous-visible-heading)
(global-set-key (kbd "M-n") 'outline-next-visible-heading)

;; Ace jump mode
(global-set-key (kbd "C-o") 'ace-jump-mode)

;;comment region
(global-set-key (kbd "M-/") 'comment-or-uncomment-region)

;; Jump to a definition in the current file.
(global-set-key (kbd "C-x C-i") 'idomenu)

;; Scrolling windows
(global-set-key (kbd "C-M-]") 'scroll-other-window)
(global-set-key (kbd "C-M-[") 'scroll-other-window-down)

;;window and buffer movement
(global-set-key (kbd "C-c w s") 'swap-windows)
(global-set-key (kbd "C-c w r") 'rotate-windows)
(global-set-key (kbd "C-c w p") 'buf-move-up)
(global-set-key (kbd "C-c w n") 'buf-move-down)
(global-set-key (kbd "C-c w b") 'buf-move-left)
(global-set-key (kbd "C-c w f") 'buf-move-right)
(global-set-key (kbd "C-c w .") 'shrink-window-horizontally)
(global-set-key (kbd "C-c w ,") 'enlarge-window-horizontally)
(global-set-key (kbd "C-c w /") (lambda () (interactive) (enlarge-window -5)))
(global-set-key (kbd "C-c w '") (lambda () (interactive) (enlarge-window 5)))
