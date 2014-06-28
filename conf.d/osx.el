(when (eq system-type 'darwin)
  (set-face-attribute 'default nil :family "Source Code Pro" :height 120)
 
  (global-set-key (kbd "M-RET") 'toggle-frame-fullscreen)

  (setq x-underline-at-descent-line t)

  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)
 
;  (setq mac-option-modifier 'alt)
;  (setq mac-command-modifier 'meta)
;  (global-set-key [kp-delete] 'delete-char)
)
