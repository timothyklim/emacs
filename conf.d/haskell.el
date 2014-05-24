(require 'haskell-simple-indent)

(autoload 'ghc-init "ghc" nil t)

(add-to-list 'auto-mode-alist '("\\.chs\\'" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.hsc\\'" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.elm\\'" . haskell-mode))

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
    
    (turn-on-eldoc-mode)
    (turn-on-haskell-doc)
    ; (turn-on-haskell-unicode-input-method)

    ; (turn-off-haskell-indent)
    ; (turn-off-haskell-indentation)
    ; (turn-off-haskell-simple-indent)
    (haskell-indentation-mode -1)

    (structured-haskell-mode 1)

    (add-to-list 'ac-sources 'ac-source-ghc-mod)

    (set-face-background 'shm-current-face "#eee8d5")
    (set-face-background 'shm-quarantine-face "lemonchiffon")

))

; (setq ghc-ghc-options '("-XUnicodeSyntax"))

(custom-set-variables
 '(safe-local-variable-values
   (quote ((haskell-indent-spaces . 4)
           (haskell-indent-spaces . 2)
           (haskell-process-type . cabal-repl)
           (shm-lambda-indent-style . leftmost-parent)))))

(define-key haskell-mode-map (kbd "TAB") 'haskell-simple-indent)
(define-key haskell-mode-map (kbd "<backtab>") 'haskell-simple-indent-backtab)
(define-key haskell-mode-map (kbd "<return>") 'haskell-simple-indent-newline-same-col)
(define-key haskell-mode-map (kbd "C-<return>") 'haskell-simple-indent-newline-indent)
(define-key haskell-mode-map (kbd "C-<right>") 'haskell-move-right)
(define-key haskell-mode-map (kbd "C-<left>") 'haskell-move-left)
(define-key haskell-mode-map (kbd "<space>") 'haskell-mode-contextual-space)


; (eval-after-load "haskell-mode"
;     '(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-compile))
; 
; (eval-after-load "haskell-cabal"
;     '(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-compile))

(when (eq system-type 'darwin)
  (eval-after-load "haskell-mode"
    '(define-key haskell-mode-map (kbd "s-r") 'haskell-compile))
  (eval-after-load "haskell-cabal"
    '(define-key haskell-cabal-mode-map (kbd "s-r") 'haskell-compile)))
