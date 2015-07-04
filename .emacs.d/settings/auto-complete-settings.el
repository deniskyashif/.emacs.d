;-------------------;
;;; Auto-Complete ;;;
;-------------------;

(require 'auto-complete) 
(require 'auto-complete-config) 

(ac-config-default)
(global-auto-complete-mode 1)
(add-hook 'after-init-hook 'global-company-mode)

;; from http://truongtx.me/2013/01/06/config-yasnippet-and-autocomplete-on-emacs/
; set the trigger key so that it can work together with yasnippet on
; tab key, if the word exists in yasnippet, pressing tab will cause
; yasnippet to activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

;; from http://blog.deadpansincerity.com/2011/05/setting-up-emacs-as-a-javascript-editing-environment-for-fun-and-profit/
; Start auto-completion after 2 characters of a word
(setq ac-auto-start 2)
; case sensitivity is important when finding matches
(setq ac-ignore-case nil)


;;:::::::;;
;; C/C++ ;;
;;:::::::;;

;; define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (cond
   ((string-equal system-type "windows-nt")
    (progn
      (add-to-list 'achead:include-directories '"C:\\MinGW\\include\\")))
   ((string-equal system-type "gnu/linux")
    (progn
      (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-linux-gnu/4.8/include")))))

;; call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

;;::::::::::::;;
;; JavaScript ;;
;;::::::::::::;;

(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)

;; tern
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(add-hook 'jsx-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

;; fix error when tern does not autorefresh (https://truongtx.me/2014/04/20/emacs-javascript-completion-and-refactoring/)
(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))

;;::::;;
;; C# ;;
;;::::;;
(if (eq system-type "windows-nt")
 (progn
   (setq omnisharp-server-executable-path "C:\\OmniSharpServer\\OmniSharp\\bin\\Debug\\omnisharp.exe")))

(provide 'auto-complete-settings)
