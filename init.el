(load-file "~/.emacs.d/nano-emacs/nano.el")

(require 'package)
(setq package-list '(ace-jump-mode
                     ace-window
                     editorconfig
                     magit
                     multiple-cursors
                     projectile
                     use-package))

;; list repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

;; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(defun my:open-workspace-dir ()
  "Go to my workspace"
  (interactive)
  (find-file "c:/Users/dkyashif/Workspace"))

(global-set-key [f2] 'my:open-workspace-dir)
(global-set-key [f3] 'magit-status)
(global-set-key [f10] 'linum-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; backup files
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))

;; auto-save files
(setq auto-save-file-name-transforms `((".*" , "~/.emacs.d/.saves")))

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

; ignore case when searching
(setq-default case-fold-search 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(use-package projectile multiple-cursors magit editorconfig ace-window ace-jump-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
