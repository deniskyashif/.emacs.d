;--------------;
;;; Packages ;;;
;--------------;

(require 'package)

;; list packages 
(setq package-list '(ace-jump-mode
                     company
		     company-tern
                     company-web
		     csharp-mode 
		     dash
                     emmet-mode
		     flymake
		     flymake-cursor
                     git-gutter
                     helm
		     js2-mode           
		     js2-refactor
                     magit
		     multiple-cursors   
		     omnisharp
		     popup
                     projectile
                     project-explorer
		     s                  
		     simple-httpd       
		     skewer-mode
                     smooth-scrolling
		     tern               
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

