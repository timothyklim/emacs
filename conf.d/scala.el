(add-to-list 'load-path "~/.emacs.d/vendor/ensime/")
(require 'ensime)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(setq scala-prettify-symbols
      '(("=>" . ?⇒)
	("<-" . ?←)
	("->" . ?→)
	("undefined" . ?⊥)
	("&&" . ?∧)
	("||" . ?∨)
	("<<<" . ?⋘)
	(">>>" . ?⋙)
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
              (setq prettify-symbols-alist scala-prettify-symbols)))
