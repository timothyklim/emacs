(require 'auto-complete-config)
(ac-config-default)

(auto-complete t)
(auto-complete-mode t)

(setq ac-auto-start nil)
(setq ac-auto-show-menu nil)

(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
