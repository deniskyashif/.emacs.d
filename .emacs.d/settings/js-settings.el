;----------------;
;;; JavaScript ;;;
;----------------;
(require 'web-beautify)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;;(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

(setq-default js2-basic-offset 2)

(setq js2-highlight-level 3)

(add-hook 'js2-mode-hook (lambda () (linum-mode 1)))

;; js2-refactor config
(require 'js2-refactor)
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")

;; web-beautify settings
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'js2-mode
  '(add-hook 'js2-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

(provide 'js-settings)
