(require 'helm-config)

(helm-mode 1)

(global-set-key (kbd "s-t") 'helm-projectile)
(global-set-key (kbd "s-F") 'helm-projectile-ag)

(custom-set-variables
  '(helm-boring-file-regexp-list ignored-file-regexp-list))
