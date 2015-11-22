;------------;
;;; Custom ;;;
;------------;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(ansi-term-color-vector
   [unspecified "#1B2B34" "#EC5f67" "#99C794" "#FAC863" "#6699CC" "#C594C5" "#6699CC" "#C0C5CE"] t)
 '(background-color "#202020")
 '(background-mode dark)
 '(blink-cursor-mode nil)
 '(coffee-indent-tabs-mode t)
 '(coffee-tab-width 2)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(cursor-color "#cccccc")
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("3625c04fa4b8a802e96922d2db3f48c9cb2f93526e1dc24ba0b400e4ee4ccd8a" "c7fb35ba0e1e7f2e4b48ba1508ce5ee309192c6e5e671dba296dc259844426e6" "4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "12b4427ae6e0eef8b870b450e59e75122d5080016a9061c9696959e50d578057" "ad950f1b1bf65682e390f3547d479fd35d8c66cafa2b8aa28179d78122faa947" "807e3a715cd43f3a2a36e0458afafcd242a678eb644327f4f24c00f5cf8c099b" "9ec814847dbff35951b72a4363cbd8203ae5bc8394680bf3417ec71b5baac1df" "73c5229c65707de59256b37f37ada7037c389983301e579f6a5ed88566872560" "fb59470114d804574023fa795cb50a81c753a26a9f6d899a46e0d72d5ea7c528" "c9980aa82ac23ab922e4053ef2a3b590a9983dfad3b639518c337a498671ba82" "ce371b56cf0952d838db6dafd92aaa6e3aadd74199c06ed7440da9df5595c4ae" "ef76ff7198c926d0f5c0c4739a655b04e5c517a6f27c9409d23bc0c58819b42d" "de924a03560ef35f73549f825acf0bfe29dfb89c082c9424fe165310ee1ccb60" "fc9340912df90bbb71129e1efc6a7dd0f75d3c3aa6b9e4499d7c64c32c4a3ab1" "57e61122217578c8ac3481b822e8f37806285b6ec8831f59d5da4a1ed312c750" "e5d605aad6552c6e09d96ad33e7c0e3b03d7156122f136b8b6b75a944d488768" "01a9fcd53368b0c73f66caf500055c26cf8ea2157da948754fb8791ccd337a3e" "0c311fb22e6197daba9123f43da98f273d2bfaeeaeb653007ad1ee77f0003037" "b0ceb4cfac7ebf161f3096de6c2b1ebe31afe8fd7597462d4a1a04347870e3cc" "55d31108a7dc4a268a1432cd60a7558824223684afecefa6fae327212c40f8d3" "97f9438943105a17eeca9f1a1c4c946765e364957749e83047d6ee337b5c0a73" "9960cc55931596d259ec3673ea7139c0090f21be4bd64728eefac0c949c843af" "11636897679ca534f0dec6f5e3cb12f28bf217a527755f6b9e744bd240ed47e1" "2e5705ad7ee6cfd6ab5ce81e711c526ac22abed90b852ffaf0b316aa7864b11f" "bdaab014ec6785f64b72efbea80808b762d8971247aacf2ffc6b76a39b9ed97c" "a2e7b508533d46b701ad3b055e7c708323fb110b6676a8be458a758dd8f24e27" "ffe39e540469ef05808ab4b75055cc81266875fa4a0d9e89c2fec1da7a6354f3" "c006bc787154c31d5c75e93a54657b4421e0b1a62516644bd25d954239bc9933" "ad24ea739f229477ea348af968634cb7a0748c9015110a777c8effeddfa920f5" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "74278d14b7d5cf691c4d846a4bbf6e62d32104986f104c1e61f718f9669ec04b" "87bee8dd980504d41c043e83c24abbbdb780ce5afb9c312f6915ed0aad2630ee" "d7088a7105aa09cc68e3d058f89917e07e0505e0f4ab522a6045ec8092d67c44" "108b3724e0d684027c713703f663358779cc6544075bc8fd16ae71470497304f" "a08941aeef53f06d22ba4fe6d27a24c45073f477ce00c61087b857ebe73addd1" "b06aaf5cefc4043ba018ca497a9414141341cb5a2152db84a9a80020d35644d1" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "4ff23437b3166eeb7ca9fa026b2b030bba7c0dfdc1ff94df14dfb1bcaee56c78" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "2d7e4feac4eeef3f0610bf6b155f613f372b056a2caae30a361947eab5074716" "18a33cdb764e4baf99b23dcd5abdbf1249670d412c6d3a8092ae1a7b211613d5" "3dafeadb813a33031848dfebfa0928e37e7a3c18efefa10f3e9f48d1993598d3" "6a9606327ecca6e772fba6ef46137d129e6d1888dcfc65d0b9b27a7a00a4af20" "dd4db38519d2ad7eb9e2f30bc03fba61a7af49a185edfd44e020aa5345e3dca7" default)))
 '(fci-rule-color "#383838")
 '(foreground-color "#cccccc")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-sexp-background-color "#1c1f26")
 '(indent-tabs-mode nil)
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (emmet-mode anaconda-mode moe-theme ample-theme minimap project-explorer circe jscs base16-theme noctilux-theme autumn-light-theme material-theme ace-jump-mode company-web angular-snippets solarized-theme git-gutter markdown-mode+ latex-preview-pane geiser magit zenburn-theme gotham-theme web-mode web-beautify tern-auto-complete tern omnisharp neotree js2-refactor google-c-style flymake-google-cpplint flymake-cursor dash csharp-mode coffee-mode company auto-complete-c-headers auto-complete ac-js2)))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(prolog-program-name
   (quote
    (((getenv "EPROLOG")
      (eval
       (getenv "EPROLOG")))
     (eclipse "eclipse")
     (mercury nil)
     (sicstus "sicstus")
     (swi "C:\\Program Files\\swipl\\bin\\swipl-win.exe")
     (gnu "gprolog")
     (t "prolog"))))
 '(prolog-system (quote swi))
 '(scroll-bar-mode nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(visible-bell t)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
