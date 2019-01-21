;----------------;
;;; JavaScript ;;;
;----------------;

(require 'flycheck)
(require 'web-beautify)
;; (require 'js2-refactor)
(require 'prettier-js)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

(setq js2-highlight-level 3)
(setq-default js2-basic-offset 4)
(setq js-indent-level 4)
(setq jsx-indent-level 4)

;; web-beautify settings
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))

;;(eval-after-load 'js2-mode
;;  '(add-hook 'js2-mode-hook
;;             (lambda ()
;;               (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook (lambda ()
			   ;; (tern-mode)
                           (linum-mode 1)))

;; prettier config
(setq prettier-js-args '("--tab-width" "4"))
(add-hook 'js2-mode-hook 'prettier-js-mode)

(provide 'js-settings)




