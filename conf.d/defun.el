(defun hot-reload ()
  "hot reload emacs config"
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(global-set-key (kbd "C-H R") 'hot-reload)
