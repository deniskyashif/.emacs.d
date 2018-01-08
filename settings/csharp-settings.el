;;::::;;
;; C# ;;
;;::::;;

(when linux-env
  (setq omnisharp-server-executable-path "~/omnisharp-roslyn/scripts/Omnisharp"))
(when mswindows-env
  (setq omnisharp-server-executable-path "C:/omnisharp-roslyn/scripts/Omnisharp"))

(setq c-basic-offset 4)
(setq omnisharp-company-strip-trailing-brackets nil)
(setq omnisharp-company-ignore-case 1)

(defun my:csharp-mode-hook ()
  (add-to-list 'company-backends 'company-omnisharp)
  (turn-on-eldoc-mode)
  (linum-on)
  (omnisharp-mode)
  (company-mode)
  (flycheck-mode))

(defun my-csharp-mode-setup ()
  (setq indent-tabs-mode nil)
  (setq c-syntactic-indentation t)
  (c-set-style "ellemtel")
  (setq c-basic-offset 4)
  (setq truncate-lines t)
  (setq tab-width 4)
  (setq evil-shift-width 4)
  (local-set-key (kbd "C-c C-c") 'recompile))

;; (add-hook 'csharp-mode-hook 'my-csharp-mode-hook t)

(provide 'csharp-settings)
