(require 'helm-config)

(helm-mode 1)

(when (eq system-type 'darwin)
  (global-set-key (kbd "s-t") 'helm-for-files))
