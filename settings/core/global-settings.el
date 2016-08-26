;---------------------;
;;; global settings ;;;
;---------------------;

(require 'helm)
(require 'tool-bar)
(require 'mwheel)
(require 'paren)
(require 'font-lock)

(defvar mswindows-env
  (string-match "windows" (symbol-name system-type)))

(defvar linux-env
  (string-match "linux" (symbol-name system-type)))

; language
(setq current-language-environment "English")

; don't show the startup screen
(setq inhibit-startup-screen 1)

; don't show the menu bar
(menu-bar-mode 0)

; don't show the tool bar
(tool-bar-mode 0)

; don't show the scroll bar
(if window-system (scroll-bar-mode 0))

; turn on mouse wheel support for scrolling
(mouse-wheel-mode 1)

; each line of text gets one line on the screen (i.e., text will run
; off the left instead of wrapping around onto a new line)
(setq-default truncate-lines 1)

; truncate lines even in partial-width windows
(setq truncate-partial-width-windows 1)

; default window width and height
(defun custom-set-frame-size ()
  (add-to-list 'default-frame-alist '(height . 35))
  (add-to-list 'default-frame-alist '(width . 90)))

(custom-set-frame-size)
(add-hook 'before-make-frame-hook 'custom-set-frame-size)

; make end and home keys go to the start/end of buffers
(global-set-key (kbd "<end>") 'end-of-buffer)
(global-set-key (kbd "<home>") 'beginning-of-buffer)
(define-key input-decode-map "\e[1;5A" [C-up])
(define-key input-decode-map "\e[1;5B" [C-down])

; ignore case when searching
(setq-default case-fold-search 1)

; show the current line and column numbers in the stats bar as well
(line-number-mode 1)
(column-number-mode 1)

; don't blink the cursor
(blink-cursor-mode 0)

; make sure transient mark mode is enabled (it should be by default, but just in case)
(transient-mark-mode 1)

; highlight parentheses when the cursor is next to them
(show-paren-mode 1)

; text decoration
; (setq font-lock-maximum-decoration 1)
(global-font-lock-mode 1)
(global-hi-lock-mode nil)
(setq jit-lock-contextually 1)
(setq jit-lock-stealth-verbose 1)

 (set-frame-font "Ubuntu Mono-9.5")
;;(set-frame-font "DejaVu Sans Mono-9")

;; if there is size information associated with text, change the text
;; size to reflect it
(size-indication-mode 1)

(defun my:open-settings-dir ()
  "Go to emacs settings/ directory"
  (interactive)
  (find-file "~/.emacs.d/settings"))

(defun my:open-workspace-dir ()
  "Go to my workspace"
  (interactive)
  (when linux-env (find-file "~/workspace"))
  (when mswindows-env (find-file "C:/Workspace")))

(defun my:search-in-google ()
  (interactive)
  (browse-url
   (concat "http://google.com/search?q="
	   (url-hexify-string
	    (if mark-active
		(buffer-substring (region-beginning) (region-end))
	      (read-string "Google: "))))))

;; global keyboard shortcuts

(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key [f2] 'my:open-workspace-dir)
(global-set-key [f8] 'project-explorer-toggle)
(global-set-key [f10] 'linum-mode)
(global-set-key (kbd "C-c C-g") 'goto-line)
(global-set-key [f5] 'shell-command)
(global-set-key [f12] 'my:open-settings-dir)
(global-set-key [f9] 'magit-status)
(define-key global-map (kbd "C-:") 'ace-jump-mode)

;; backup files
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))

;; auto-save files
(setq auto-save-file-name-transforms `((".*" , "~/.emacs.d/.saves")))

;; enable global electric-pair-mode
(electric-pair-mode t)

;; enable global git gutter mode
;; (global-git-gutter-mode t)

;; set prolog mode for files with *.pl extension
(setq auto-mode-alist
      (cons (cons "\\.pl" 'prolog-mode)
            auto-mode-alist))

(when mswindows-env
    (setq find-program "c:/gnuwin32/bin/find.exe"
          grep-program "c:/gnuwin32/bin/grep.exe"))

(setq visible-bell t)
(smooth-scrolling-mode t)

;; http://www.archivum.info/comp.emacs/2007-06/00348/Re-Ignore-%5EM-in-mixed-%28LF-and-CR+LF%29-line-ended-textfiles.html
(defun my:remove-dos-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

;; Source: http://www.emacswiki.org/emacs-en/download/misc-cmds.el
(defun revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive)
  (revert-buffer t t))

(defun my:word-wrap ()
  (set truncate-lines t)
  (set word-wrap t))

(add-hook 'org-mode-hook 'my:word-wrap)
(add-hook 'text-mode-hook 'my:word-wrap)

;; insert 4 spaces for a tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(provide 'global-settings)
