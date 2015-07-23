;;:::::::;;
;; C/C++ ;;
;;:::::::;;

(setq c-basic-offset 4)

;; start flymake-google-cpplint-load
;; define a function for flymake initialization
(defun my:flymake-google-init ()
  (require 'flymake-google-cpplint)
  (when mswindows-env
    (custom-set-variables
     '(flymake-google-cpplint-command "C:\\Python34\\Scripts\\cpplint")))
  (when linux-env
    (custom-set-variables
       '(flymake-google-cpplint-command "/usr/local/bin/cpplint")))

  (flymake-google-cpplint-load)
)

(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)

;; start google c style
(require 'google-c-style)
(add-hook 'c-mode-hook 'google-set-c-style)
(add-hook 'c-mode-hook 'google-make-newline-indent)
(add-hook 'c-mode-hook (lambda () (linum-mode 1)))

;; auto complete config-changed-event;;
;;define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (when mswindows-env
    (add-to-list 'achead:include-directories '"C\\MinGW\\include"))
  (when linux-env
    (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-linux-gnu/4.8/include")))

;; call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)


(provide 'c-cpp-settings)
