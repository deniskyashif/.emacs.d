(require 'company)
(require 'company-lsp)
(require 'company-web-html)                          ; load company mode html backend

(push 'company-lsp company-backends)

(setq company-tooltip-limit 20)                      ; bigger popup window
(setq company-tooltip-align-annotations 't)          ; align annotations to the right tooltip border
(setq company-idle-delay .3)                         ; decrease delay before autocompletion popup shows
(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing
(setq company-tooltip-limit 10)
(setq company-minimum-prefix-length 2)
(setq company-tooltip-flip-when-above t)

(setq company-dabbrev-downcase nil)                  ; case sensitive suggestions

(global-set-key (kbd "C-c /") 'company-files)        ; Force complete file names on "C-c /" key

(global-company-mode 1)

(provide 'company-settings)
