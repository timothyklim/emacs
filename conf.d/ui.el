(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-splash-screen t)
(setq inhibit-startup-echo-area-message t)
(setq ring-bell-function 'ignore)
(setq tab-width 2)

(global-linum-mode -1)

(fset 'yes-or-no-p 'y-or-n-p)

(global-prettify-symbols-mode t)
