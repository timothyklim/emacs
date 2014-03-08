(require 'helm-config)

(helm-mode 1)

(when (eq system-type 'darwin)
  (define-key haskell-mode-map (kbd "s-t") 'helm-for-files))
