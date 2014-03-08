(require 'auto-complete-config)

(ac-config-default)

(setq ac-auto-start nil)
(setq ac-auto-show-menu nil)
(setq ac-menu-height 20)

(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)

(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)
(define-key ac-completing-map (kbd "M-TAB") 'ac-next)
