;--------------;
;;; Packages ;;;
;--------------;

(require 'package)

;; list packages 
(setq package-list '(2048-game          
		     ac-js2             
		     auto-complete      
		     auto-complete-c-headers
		     csharp-mode 
		     dash               
		     js2-mode           
		     js2-refactor       
		     multiple-cursors   
		     neotree            
		     nyan-mode
		     omnisharp
		     popup              
		     s                  
		     simple-httpd       
		     skewer-mode        
		     tern               
		     tern-auto-complete 
		     yasnippet          
		     zenburn-theme
		     ))

;; list repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                       ;;("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'package-repositories)

