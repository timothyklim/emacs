(add-to-list 'load-path "~/.emacs.d/vendor/ensime/")
(require 'ensime)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
