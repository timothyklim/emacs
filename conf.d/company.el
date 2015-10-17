(company-mode t)

(setq company-tooltip-align-annotations t)

(add-hook 'after-init-hook 'global-company-mode)

; (global-set-key (kbd "TAB") 'company-complete)
(global-set-key (kbd "C-c o") 'company-complete)
(global-set-key (kbd "C-c y") 'company-yasnippet)

; (setq tab-always-indent 'complete
;       completion-at-point-functions '(company-complete))
