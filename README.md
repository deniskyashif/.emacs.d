# .emacs.d

My Emacs configuration which I use writing and note taking.

## Install

Backup your `~/.emacs.d/` if you have one:

```sh
mv ~/.emacs.d/ ~/.emacs.d.backup/
```

Clone:

```sh
git clone https://github.com/deniskyashif/.emacs.d.git ~/.emacs.d
git submodule init
git submodule update
```

Update `~/.emacs.d/nano-emacs/nano-init.el`

```diff
-(add-to-list 'load-path "/Users/rougier/Documents/GitHub/nano-emacs")
+(add-to-list 'load-path "~/.emacs.d/nano-emacs")
```

Based on [nano-emacs](https://github.com/rougier/nano-emacs)

Run in dark mode

```sh
emacs -dark
```