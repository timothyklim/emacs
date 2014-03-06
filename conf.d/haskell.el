(autoload 'ghc-init "ghc" nil t)

(add-hook 'haskell-mode-hook
  (lambda ()
    (setq tab-width 2)

    (ghc-init)

    (flymake-mode)

    (turn-on-eldoc-mode)
    (turn-on-haskell-doc)
    (turn-on-haskell-indent)
    (turn-on-haskell-indentation)
    (turn-on-haskell-simple-indent)
    (turn-on-haskell-unicode-input-method)


))
