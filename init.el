(setq debug-on-error nil)

(when (eq system-type 'darwin)
  (setq cask-path "/usr/local/opt/cask"))

(require 'cask (concat cask-path "/cask.el"))
(cask-initialize)

(setq confd-directory (f-join user-emacs-directory "conf.d"))

(add-to-list 'load-path (f-join user-emacs-directory "vendor"))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))

(load (f-join user-emacs-directory "vars"))

(mapc (lambda (path)
  (load
   (f-join confd-directory path)))
     (directory-files (expand-file-name confd-directory) nil ".*el$"))
