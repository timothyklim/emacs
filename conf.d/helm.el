(require 'helm-config)

(helm-mode 1)

(when (eq system-type 'darwin)
  (global-set-key (kbd "s-t") 'helm-for-files))

(custom-set-variables
  '(helm-boring-file-regexp-list
     '("\\.git$" "\\.hg$" "\\._darcs$" "\\.cabal-sandbox$" "\\.idea$" "dist")))
