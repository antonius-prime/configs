;;;; Custom prettifier and hookers
(defun my-add-pretty-lambda ()
  "Make some word or string show as pretty Unicode symbols"
  (setq prettify-symbols-alist
        '(
          ("lambda" . 955) ; λ
	  ("\\" . 955) ; λ
          ("->" . 8594)    ; →
          ("<-" . 8592)    ; →	  
          ("=>" . 8658)    ; ⇒
;;          ("map" . 8614)   ; ↦
	  ("==" . 8801) ;
	  (">=" . 8805)
	  ("<=" . 8804)
	  ("++" . 10746)
          )))

(add-hook 'emacs-lisp-mode-hook 'my-add-pretty-lambda)
(add-hook 'lisp-mode-hook 'my-add-pretty-lambda)
(add-hook 'clojure-mode-hook 'my-add-pretty-lambda)
(add-hook 'haskell-mode-hook 'my-add-pretty-lambda)
(add-hook 'shen-mode-hook 'my-add-pretty-lambda)
;;(add-hook 'tex-mode-hook 'my-add-pretty-lambda)
