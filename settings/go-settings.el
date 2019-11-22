(require 'company)
(require 'company-go)

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))

(add-hook 'go-mode-hook 'lsp-deferred)
(add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'go-mode-hook 'flycheck-mode)

(provide 'go-settings)
