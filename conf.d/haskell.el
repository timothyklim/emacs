(autoload 'ghc-init "ghc" nil t)

(custom-set-variables
 '(haskell-program-name "ghci")
 '(inferior-haskell-wait-and-jump t)
 '(haskell-font-lock-symbols t)
 '(haskell-stylish-on-save t)
)

(add-hook 'haskell-mode-hook
  (lambda ()
    (ghc-init)
    (flymake-mode)
    (turn-on-haskell-doc-mode)
    (turn-on-haskell-indent)
    (turn-on-haskell-ghci)
    (turn-on-eldoc-mode)
    (turn-on-haskell-indentation)
    (local-set-key [return] 'newline-and-indent)
    (local-set-key (kbd "C-c l") 'hs-lint)
    (local-set-key (kbd "C-c h") 'haskell-hoogle)
    (local-set-key (kbd "C-c C-h") 'haskell-hayoo)
    (setq tab-width 2)
    (auto-complete-mode)
    (add-to-list 'ac-sources 'ac-source-ghc-mod)))

(require 'haskell-interactive-mode)
(add-hook 'haskell-interactive-mode-hook
  (lambda ()
    (local-set-key (kbd "C-<up>")
  		 '(lambda () (haskell-interactive-mode-history-toggle 1)))
    (local-set-key (kbd "C-<down>")
  		 '(lambda () (haskell-interactive-mode-history-toggle -1)))
    ))

(add-to-list 'exec-path "~/.cabal/bin")
