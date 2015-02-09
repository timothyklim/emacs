(require 'helm-config)

(helm-mode 1)

(global-set-key (kbd "s-t") 'helm-projectile)
(global-set-key (kbd "s-F") 'helm-projectile-ag)
(global-set-key (kbd "M-x") 'helm-M-x)
; (global-set-key (kbd "M-y") 'helm-show-kill-ring)

(custom-set-variables
  '(helm-boring-file-regexp-list ignored-file-regexp-list))

(setq helm-M-x-fuzzy-match t)
(setq helm-case-fold-search 'smart)
(setq helm-locate-case-fold-search t)
(setq helm-buffers-fuzzy-matching t)
