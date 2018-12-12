;;::::;;
;; C# ;;
;;::::;;

(when linux-env
  (setq omnisharp-server-executable-path "~/omnisharp-roslyn/scripts/Omnisharp"))
(when mswindows-env
  (setq omnisharp-server-executable-path "c:/Bin/omnisharp-win-x86/OmniSharp.exe"))

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

  (electric-pair-local-mode 1) ;; Emacs 25

  (local-set-key (kbd "C-c r r") 'omnisharp-run-code-action-refactoring)
  (local-set-key (kbd "C-c C-c") 'recompile)
  (local-set-key (kbd "M-.") 'omnisharp-go-to-definition))

(add-hook 'csharp-mode-hook 'my-csharp-mode-setup t)

(provide 'csharp-settings)
