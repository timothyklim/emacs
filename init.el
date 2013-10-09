(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(melpa solarized-theme ghc ghci-completion flymake-haskell-multi flymake-hlint haskell-mode)
  "my default packages")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(mapc (lambda (path)
	(load
	 (concat (expand-file-name "~/.emacs.d/conf.d/") path)))
      (directory-files (expand-file-name "~/.emacs.d/conf.d") nil ".*el$"))
 
