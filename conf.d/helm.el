(require 'helm-config)

(helm-mode 1)

(global-set-key (kbd "s-t") 'helm-projectile)

(custom-set-variables
  '(helm-boring-file-regexp-list
     '("\\.git" "\\.hg" "\\._darcs" "\\.cabal-sandbox" "\\.idea" "dist$" "tmp$" "\\.DS_Store" "\\.class$" "\\.o$" "\\.so$" "\\.elc$" "\\.jar$" "\\.png$" "\\.jpg$" "\\.jpeg$" "\\.gif$" "~$")))
