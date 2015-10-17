; (load "$GOPATH/src/golang.org/x/tools/cmd/oracle/oracle.el")
;
; (defun go-run-buffer()
;   (interactive)
;   (shell-command (concat "go run " (buffer-name))))
;
; (add-hook 'go-mode-hook '(lambda ()
;   (add-hook 'before-save-hook 'gofmt-before-save)
;
;   (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
;   (local-set-key (kbd "C-c C-g") 'go-goto-imports)
;   (local-set-key (kbd "C-c C-f") 'gofmt)
;   (local-set-key (kbd "C-c C-k") 'godoc)
;   (local-set-key (kbd "C-c C-x") 'go-run-buffer)
;   (local-set-key (kbd "M-.") 'godef-jump)
;
;   (setq compile-command "go build -v && go test -v && go vet")
;   (local-set-key (kbd "C-c C-c") 'compile)
;
;   (set (make-local-variable 'company-backends)
;     '(company-go company-yasnippet))
; ))
