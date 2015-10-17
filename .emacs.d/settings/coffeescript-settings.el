;;--------------;;
;; CoffeeScript ;;
;;--------------;;

(require 'coffee-mode)

(add-hook 'coffee-mode-hook
          (lambda ()
            (set (make-local-variable 'tab-width) 2)
            (set (make-local-variable 'indent-tabs-mode) nil)))

(provide 'coffeescript-settings)
