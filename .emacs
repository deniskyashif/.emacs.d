; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;; set global settings
(require 'global-settings)

;; package repositories
(require 'package-repositories)

;; auto complete
(require 'auto-complete-settings)

;; yasnippet
(require 'yasnippet-settings)

;; javascript
(require 'js-settings)

;; C#
(require 'csharp-settings)

;; from https://github.com/jhamrick/emacs
;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(load 
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)
