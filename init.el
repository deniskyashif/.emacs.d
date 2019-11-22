(package-initialize)

;; path where settings files are kept
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

;; typescript
(require 'ts-settings)

;; web mode (html, css, jsx)
(require 'web-mode-settings)
