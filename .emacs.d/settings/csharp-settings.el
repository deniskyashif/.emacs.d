(add-hook 'csharp-mode-hook (lambda () (linum-mode 1)))

(add-to-list 'company-backends 'company-omnisharp)

(provide 'csharp-settings)
