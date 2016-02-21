;;--------------;;
;;; TypeScript ;;;
;;--------------;;

(defun my:ts-mode ()
    (tide-mode)
    (flycheck-mode)
    (setq flycheck-check-syntax-automatically '(save mode-enabled))
    (eldoc-mode)
    (tide-start-server-if-required))

(setq typescript-indent-level 2. typescript-expr-indent-offset 2)

(add-to-list 'auto-mode-alist '("\\.ts$" . typescript-mode))

(add-hook 'typescript-mode-hook 'my:ts-mode)


