;--------------;
;;; Packages ;;;
;--------------;

(require 'package)

;; list packages 
(setq package-list '(ace-jump-mode
                     ace-window
                     cheat-sh
                     company
                     company-web
                     company-go
                     dashboard
                     editorconfig
                     emmet-mode
                     exec-path-from-shell
                     flymake
                     flymake-cursor
                     go-eldoc
                     go-guru
                     go-rename
                     golint
                     helm
                     js2-mode
                     lsp-mode
                     magit
                     multiple-cursors
                     neotree
                     nord-theme
                     omnisharp
                     page-break-lines
                     powerline
                     projectile
                     project-explorer
                     smooth-scrolling
                     tide
                     use-package
                     yasnippet
                     web-beautify
                     web-mode))

;; list repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
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

