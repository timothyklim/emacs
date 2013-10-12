(setq mouse-drag-copy-region nil) ;; stops selection with a mouse being immediately injected to the kill ring
(setq x-select-enable-primary nil) ;; stops killing/yanking interacting with primary X11 selection
(setq x-select-enable-clipboard t) ;; makes killing/yanking interact with clipboard X11 selection

(setq select-active-regions t) ;; active region sets primary X11 selection
(global-set-key [mouse-2] 'mouse-yank-primary) ;; make mouse middle-click only paste from primary X11 selection, not clipboard and kill ring.

(global-set-key (kbd "M-y") 'browse-kill-ring)

