(add-hook 'csharp-mode-hook (lambda () (linum-mode 1)))

;; auto complete config
(when linux-env
  (setq omnisharp-server-executable-path "~/omnisharp-roslyn/scripts/Omnisharp"))
(when mswindows-env
  (setq omnisharp-server-executable-path "C:\\omnisharp-roslyn\\scripts\\Omnisharp"))

(defun my:csharp-mode ()
  (add-to-list 'company-backends 'company-omnisharp)
  (omnisharp-mode)
  (company-mode)
  (flycheck-mode)
  (turn-on-eldoc-mode))

(setq omnisharp-company-strip-trailing-brackets nil)
(setq omnisharp-company-ignore-case 1)

(add-hook 'csharp-mode-hook 'my:csharp-mode)

(add-to-list 'company-backends 'company-omnisharp)

(provide 'csharp-settings)
