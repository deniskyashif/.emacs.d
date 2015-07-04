;;:::::::;;
;; C/C++ ;;
;;:::::::;;

(setq-default c-basic-offset 2)

;; start flymake-google-cpplint-load
;; define a function for flymake initialization
(defun my:flymake-google-init ()
  (require 'flymake-google-cpplint)
  (cond
   ((string-equal system-type "windows-nt")
    (progn
      (custom-set-variables
       '(flymake-google-cpplint-command "C:\\Python34\\Scripts\\cpplint"))))
   ((string-equal system-type "gnu/linux")
    (progn
      (message "TODO: add path for linux"))))

  (flymake-google-cpplint-load))

(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)

;; start google c style
(require 'google-c-style)
(add-hook 'c-mode-hook 'google-set-c-style)
(add-hook 'c-mode-hook 'google-make-newline-indent)

(provide 'c-cpp-settings)
