(when (eq system-type 'darwin)
  (setq cask-path "/usr/local/opt/cask"))

(require 'cask (concat cask-path "/cask.el"))
(cask-initialize)

(setq confd-directory (f-join user-emacs-directory "conf.d"))

(mapc (lambda (path)
  (load
   (f-join confd-directory path)))
     (directory-files (expand-file-name confd-directory) nil ".*el$"))
