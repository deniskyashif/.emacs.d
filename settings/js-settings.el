;----------------;
;;; JavaScript ;;;
;----------------;

(require 'flycheck)
(require 'web-beautify)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

(setq js2-highlight-level 3)
(setq-default js2-basic-offset 4)
(setq js-indent-level 4)
(setq jsx-indent-level 4)

;; web-beautify settings
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))

(add-hook 'js-mode-hook 'js2-minor-mode)

(provide 'js-settings)




