; hot reload .emacs
(defun hot-reload ()
  "hot reload emacs config"
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(global-set-key (kbd "C-H R") 'hot-reload)

; (un)comment text like TextMate
(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))

(global-set-key (kbd "C-c /") 'comment-or-uncomment-region-or-line)

(when (memq window-system '(mac ns))
  (global-set-key (kbd "s-/") 'comment-or-uncomment-region-or-line))
