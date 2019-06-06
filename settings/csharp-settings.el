;;::::;;
;; C# ;;
;;::::;;

(setq omnisharp-server-executable-path "~/omnisharp-osx/run")

(eval-after-load
  'company
  '(add-to-list 'company-backends #'company-omnisharp))

(defun my-csharp-mode-setup ()
  (omnisharp-mode)
  (company-mode)
  (flycheck-mode)

  (setq indent-tabs-mode nil)
  (setq c-syntactic-indentation t)
  (c-set-style "ellemtel")
  (setq c-basic-offset 4)
  (setq truncate-lines t)
  (setq tab-width 4)
  (setq evil-shift-width 4)

  (electric-pair-local-mode 1)

  (local-set-key (kbd "C-c o d") 'omnisharp-go-to-definition)
  (local-set-key (kbd "C-c o f") 'omnisharp-code-format-entire-file)
  (local-set-key (kbd "C-c o i") 'omnisharp-find-implementations)
  (local-set-key (kbd "C-c o r") 'omnisharp-run-code-action-refactoring)
  (local-set-key (kbd "C-c o s") 'omnisharp-helm-find-symbols)
  (local-set-key (kbd "C-c o u") 'omnisharp-helm-find-usages)
  (local-set-key (kbd "C-c o e") 'omnisharp-rename)
  (local-set-key (kbd "C-c o g") 'omnisharp-fix-usings))

(add-hook 'csharp-mode-hook 'my-csharp-mode-setup t)

(add-to-list 'auto-mode-alist '("\\.csproj$" . xml-mode))

(provide 'csharp-settings)
