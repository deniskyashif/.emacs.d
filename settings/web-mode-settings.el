;;::::::::::;;
;; Web Mode ;;
;;::::::::::;;

(require 'flycheck)
(require 'web-mode)
(require 'company-web-html)
(require 'emmet-mode)

(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.cshtml\\'" . web-mode))

(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

;; jsx syntax checker
(flycheck-define-checker jsxhint-checker
  "A JSX syntax and style checker based on JSXHint."

  :command ("jsxhint" source)
  :error-patterns
  ((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
  :modes (web-mode))

(defun my:web-mode-hook ()
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)

  (linum-mode 1)
  (lambda ()
    (when (equal web-mode-content-type "jsx")
      ;; enable flycheck
      (flycheck-select-checker 'jsxhint-checker)
      (flycheck-mode))))

;; Enable JavaScript completion between <script>...</script> etc.
(defadvice company-tern (before web-mode-set-up-ac-sources activate)
  "Set `tern-mode' based on current language before running company-tern."
  (if (equal major-mode 'web-mode)
      (let ((web-mode-cur-language
             (web-mode-language-at-pos)))
        (if (or (string= web-mode-cur-language "javascript")
               (string= web-mode-cur-language "jsx"))
            (unless tern-mode (tern-mode))
          (if tern-mode (tern-mode))))))

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'my:web-mode-hook)

(provide 'web-mode-settings)
