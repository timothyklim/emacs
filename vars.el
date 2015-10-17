(setq ignored-files
      '(".DS_Store" ".class" ".o" ".so" ".elc" ".jar" ".png" ".jpg" ".jpeg" ".gif" "~" ".ensime"))

(setq ignored-files-mask
      (mapcar (lambda (f) (concat "*" f)) ignored-files))

(setq ignored-directories
      '(".git" ".hg" "._darcs" ".cabal-sandbox" ".idea" ".ensime_cache" "dist" "tmp" "target" "node_modules"))

(defun vars-replace-dots (list)
  (mapcar (lambda (f) (replace-regexp-in-string "\\." "\\\\." f)) list))

(let ((files-regexp
       (vars-replace-dots (mapcar (lambda (f) (concat f "$")) ignored-files)))
      (directories-regexp
       (vars-replace-dots ignored-directories)))
  (setq ignored-file-regexp-list
        (append files-regexp directories-regexp)))
