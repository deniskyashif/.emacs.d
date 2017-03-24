;--------------;
;;; Packages ;;;
;--------------;

(require 'package)

;; list packages 
(setq package-list '(ace-jump-mode
                     ace-window
                     company
                     company-tern
                     company-web
                     elpy
                     emmet-mode
                     flymake
                     flymake-cursor
                     js2-mode           
                     js2-refactor
                     magit
                     omnisharp
                     powerline
                     project-explorer
                     smooth-scrolling
                     swiper
                     tern
                     tide
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

