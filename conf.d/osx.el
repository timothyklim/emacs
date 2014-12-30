(when (memq window-system '(mac ns))
  (set-face-attribute 'default nil :family "Source Code Pro" :height 120)
 
  (global-set-key (kbd "M-RET") 'toggle-frame-fullscreen)

  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)

  (setq x-underline-at-descent-line t
        ns-use-srgb-colorspace t
        mac-command-modifier 'super
        mac-option-modifier 'meta
        mac-control-modifier 'control
        ns-function-modifier 'hyper)
  (global-set-key [kp-delete] 'delete-char)

  ; ns-win
  ;; Here are some Nextstep-like bindings for command key sequences.
  (define-key global-map [?\s-,] 'customize)
  (define-key global-map [?\s-'] 'next-multiframe-window)
  (define-key global-map [?\s-`] 'other-frame)
  (define-key global-map [?\s-~] 'ns-prev-frame)
  (define-key global-map [?\s--] 'center-line)
  (define-key global-map [?\s-:] 'ispell)
  (define-key global-map [?\s-?] 'info)
  (define-key global-map [?\s-^] 'kill-some-buffers)
  (define-key global-map [?\s-&] 'kill-this-buffer)
  (define-key global-map [?\s-C] 'ns-popup-color-panel)
  (define-key global-map [?\s-D] 'dired)
  (define-key global-map [?\s-E] 'edit-abbrevs)
  (define-key global-map [?\s-L] 'shell-command)
  (define-key global-map [?\s-M] 'manual-entry)
  (define-key global-map [?\s-S] 'ns-write-file-using-panel)
  (define-key global-map [?\s-a] 'mark-whole-buffer)
  (define-key global-map [?\s-c] 'ns-copy-including-secondary)
  (define-key global-map [?\s-d] 'isearch-repeat-backward)
  (define-key global-map [?\s-e] 'isearch-yank-kill)
  (define-key global-map [?\s-f] 'isearch-forward)
  (define-key global-map [?\s-g] 'isearch-repeat-forward)
  (define-key global-map [?\s-h] 'ns-do-hide-emacs)
  (define-key global-map [?\s-H] 'ns-do-hide-others)
  (define-key global-map [?\s-j] 'exchange-point-and-mark)
  (define-key global-map [?\s-k] 'kill-this-buffer)
  (define-key global-map [?\s-l] 'goto-line)
  (define-key global-map [?\s-m] 'iconify-frame)
  (define-key global-map [?\s-n] 'make-frame)
  (define-key global-map [?\s-o] 'ns-open-file-using-panel)
  (define-key global-map [?\s-p] 'ns-print-buffer)
  (define-key global-map [?\s-q] 'save-buffers-kill-emacs)
  (define-key global-map [?\s-s] 'save-buffer)
  (define-key global-map [?\s-t] 'ns-popup-font-panel)
  (define-key global-map [?\s-u] 'revert-buffer)
  (define-key global-map [?\s-v] 'yank)
  (define-key global-map [?\s-w] 'delete-frame)
  (define-key global-map [?\s-x] 'kill-region)
  (define-key global-map [?\s-y] 'ns-paste-secondary)
  (define-key global-map [?\s-z] 'undo)
  (define-key global-map [?\s-|] 'shell-command-on-region)
  (define-key global-map [s-kp-bar] 'shell-command-on-region)
  ;; (as in Terminal.app)
  (define-key global-map [s-right] 'ns-next-frame)
  (define-key global-map [s-left] 'ns-prev-frame)

  (define-key global-map [home] 'beginning-of-buffer)
  (define-key global-map [end] 'end-of-buffer)
  (define-key global-map [kp-home] 'beginning-of-buffer)
  (define-key global-map [kp-end] 'end-of-buffer)
  (define-key global-map [kp-prior] 'scroll-down-command)
  (define-key global-map [kp-next] 'scroll-up-command)

  ;; Allow shift-clicks to work similarly to under Nextstep.
  (define-key global-map [S-mouse-1] 'mouse-save-then-kill)
  (global-unset-key [S-down-mouse-1])

  ;; Special Nextstep-generated events are converted to function keys.  Here
  ;; are the bindings for them.  Note, these keys are actually declared in
  ;; x-setup-function-keys in common-win.
  (define-key global-map [ns-power-off] 'save-buffers-kill-emacs)
  (define-key global-map [ns-open-file] 'ns-find-file)
  (define-key global-map [ns-open-temp-file] [ns-open-file])
  (define-key global-map [ns-change-font] 'ns-respond-to-change-font)
  (define-key global-map [ns-open-file-line] 'ns-open-file-select-line)
  (define-key global-map [ns-spi-service-call] 'ns-spi-service-call)
  (define-key global-map [ns-new-frame] 'make-frame)
  (define-key global-map [ns-toggle-toolbar] 'ns-toggle-toolbar)
  (define-key global-map [ns-show-prefs] 'customize)
)
