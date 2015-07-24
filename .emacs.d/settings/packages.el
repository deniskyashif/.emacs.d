;--------------;
;;; Packages ;;;
;--------------;

(require 'package)

;; list packages 
(setq package-list '(ac-js2             
		     auto-complete      
		     auto-complete-c-headers
		     company
                     coffee-mode
		     csharp-mode 
		     dash
		     flymake
		     flymake-cursor
		     flymake-google-cpplint
		     google-c-style
		     js2-mode           
		     js2-refactor
		     multiple-cursors   
		     neotree            
		     omnisharp
		     popup              
		     s                  
		     simple-httpd       
		     skewer-mode        
		     tern               
		     tern-auto-complete 
		     yasnippet
		     web-beautify
                     web-mode))

;; list repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                       ;;("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

;; activate all the packages (in particular autoloads)
(package-initialize)

;; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'packages)

