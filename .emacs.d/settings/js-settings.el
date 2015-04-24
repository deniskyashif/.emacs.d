;----------------;
;;; JavaScript ;;;
;----------------;

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

(setq-default js2-basic-offset 2)

(setq js2-highlight-level 3)

;; https://truongtx.me/2014/02/23/set-up-javascript-development-environment-in-emacs/
;;(define-key js-mode-map "{" 'paredit-open-curly)
;;(define-key js-mode-map "}" 'paredit-close-curly-and-newline)

(provide 'js-settings)
