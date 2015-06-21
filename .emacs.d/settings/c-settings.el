;;:::::::;;
;; C/C++ ;;
;;:::::::;;

(setq-default c-basic-offset 4)

;; start flymake-google-cpplint-load
;; define a function for flymake initialization
(defun my:flymake-google-init ()
  (require 'flymake-google-cpplint)
  (custom-set-variables
   '(flymake-google-cpplint-command "C:\\Python34\\Scripts\\cpplint"))
  (flymake-google-cpplint-load))

(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)

;; start google c style
(require 'google-c-style)
(add-hook 'c-mode-hook 'google-set-c-style)
(add-hook 'c-mode-hook 'google-make-newline-indent)

(provide 'c-settings)
