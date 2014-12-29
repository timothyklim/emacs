(projectile-global-mode)

(setq projectile-require-project-root nil
      projectile-globally-ignored-directories
      (append ignored-directories projectile-globally-ignored-directories)
      projectile-globally-ignored-files
      (append ignored-files-mask projectile-globally-ignored-files))

(when (eq system-type 'darwin)
  (global-set-key (kbd "s-T") 'projectile-find-file))
