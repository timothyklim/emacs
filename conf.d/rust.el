(add-hook 'rust-mode-hook '(lambda ()
  (add-hook 'before-save-hook 'rustfmt-format-buffer)
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

  (racer-mode)
  (racer-turn-on-eldoc)
  (cargo-minor-mode)

  (set (make-local-variable 'company-backends) '(company-racer))

  (local-set-key (kbd "M-.") #'racer-find-definition)
  (local-set-key (kbd "TAB") #'company-indent-or-complete-common)
  (local-set-key (kbd "C-c C-f") #'rustfmt-format-buffer)
))
