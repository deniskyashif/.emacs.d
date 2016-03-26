;; path where settings files are kept

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/settings/")
(add-to-list 'load-path "~/.emacs.d/settings/core")

;; package settings
(require 'packages)

;; set global settings
(require 'global-settings)

;; company mode
(require 'company-settings)

;; yasnippet
(require 'yasnippet-settings)

;; C#
(require 'csharp-settings)

;; javascript
(require 'js-settings)

;; web mode (html, css, jsx)
(require 'web-mode-settings)

;; from https://github.com/jhamrick/emacs
;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(load 
 (setq custom-file (expand-file-name "settings/core/custom.el" user-emacs-directory))
 'noerror)
