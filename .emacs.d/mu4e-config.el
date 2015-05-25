;; EMAIL
(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e/")
(require 'mu4e)

;; default
;; (setq mu4e-maildir "~/Maildir")

(setq mu4e-drafts-folder "/Drafts")
(setq mu4e-sent-folder   "/Sent Mail")
(setq mu4e-trash-folder  "/Junk Email")

;; don't save message to Sent Messages, Gmail/IMAP takes care of this
;;(setq mu4e-sent-messages-behavior 'delete)

;; setup some handy shortcuts
;; you can quickly switch to your Inbox -- press ``ji''
;; then, when you want archive some messages, move them to
;; the 'All Mail' folder by pressing ``ma''.

(setq mu4e-maildir-shortcuts
    '( ("/INBOX"               . ?i)
       ("/Sent Mail"   . ?s)
       ("/Junk Email"       . ?t)
       ("/All Mail"    . ?a)))

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "offlineimap")

;; something about ourselves
(setq
   user-mail-address "antonio.paunovic@fer.hr"
   user-full-name  "Antonio Paunović"
   mu4e-compose-signature
    (concat
      "Antonio Paunović\n"
      "\n"))

;; sending mail -- replace USERNAME with your gmail username
;; also, make sure the gnutls command line utils are installed
;; package 'gnutls-bin' in Debian/Ubuntu

(require 'smtpmail)
(setq message-send-mail-function 'smtpmail-send-it
   starttls-use-gnutls t
   smtpmail-starttls-credentials '(("postar.fer.hr" 587 nil nil))
   smtpmail-auth-credentials
     '(("postar.fer.hr" 587 "antonio.paunovic@fer.hr" nil))
   smtpmail-default-smtp-server "postar.fer.hr"
   smtpmail-smtp-server "postar.fer.hr"
   smtpmail-smtp-service 587)

;; alternatively, for emacs-24 you can use:
;;(setq message-send-mail-function 'smtpmail-send-it
;;     smtpmail-stream-type 'starttls
;;     smtpmail-default-smtp-server "smtp.gmail.com"
;;     smtpmail-smtp-server "smtp.gmail.com"
;;     smtpmail-smtp-service 587)

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)
(setq mu4e-view-show-images t)
(setq mu4e-attachment-dir "~/Downloads")

;; remove self from CC
(setq mu4e-compose-keep-self-cc nil)
(setq mu4e-use-fancy-chars t)
;; attempt to show images when viewing messages
(setq mu4e-view-show-images t)
