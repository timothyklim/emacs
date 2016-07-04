(require 'ensime)

(setq scala-prettify-symbols
  '(
    ("=>" . ?⇒)
    ("<-" . ?←)
    ("->" . ?→)
    ("undefined" . ?⊥)
    ("&&" . ?∧)
    ("||" . ?∨)
    ("<<<" . ?⋘)
    (">>>" . ?⋙)
    ("++" . ?⧺)
    ("any" . ?∃)
    ("all" . ?∀)
    ("traverse" . ?↦)
    ("map" . ?∘)
    ("lambda" . ?λ)
    ("alpha" . ?α)
    ("beta" . ?β)
    ("Unit" . ?∅)
  ))

(add-hook 'scala-mode-hook
  (lambda ()
    (ensime-scala-mode-hook)
    (setq prettify-symbols-alist scala-prettify-symbols)
    (prettify-symbols-mode)
    (define-key scala-mode-map (kbd "C-x M-e") 'ensime-fully-reload)
  ))

(defun ensime-fully-reload ()
  "reload ensime"
  (interactive)
  (ensime-shutdown)
  (ensime))
