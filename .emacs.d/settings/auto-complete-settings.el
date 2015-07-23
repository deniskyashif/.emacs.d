;-------------------;
;;; Auto-Complete ;;;
;-------------------;

(require 'auto-complete) 
(require 'auto-complete-config)
(require 'company)

(ac-config-default)
(global-auto-complete-mode 1)
(add-hook 'after-init-hook 'global-company-mode)

;; from http://truongtx.me/2013/01/06/config-yasnippet-and-autocomplete-on-emacs/
; set the trigger key so that it can work together with yasnippet on
; tab key, if the word exists in yasnippet, pressing tab will cause
; yasnippet to activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

;; from http://blog.deadpansincerity.com/2011/05/setting-up-emacs-as-a-javascript-editing-environment-for-fun-and-profit/
; Start auto-completion after 2 characters of a word
(setq ac-auto-start 2)
; case sensitivity is important when finding matches
(setq ac-ignore-case nil)

(provide 'auto-complete-settings)
