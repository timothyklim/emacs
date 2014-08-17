(projectile-global-mode)

(setq projectile-require-project-root nil
      projectile-globally-ignored-directories
        (append '(".git" ".hg" "._darcs" ".cabal-sandbox" ".idea" "dist" "tmp") projectile-globally-ignored-directories)
      projectile-globally-ignored-files
        (append '(".DS_Store" "*.class" "*.o" "*.so" "*.elc" "*.jar" "*.png" "*.jpg" "*.jpeg" "*.gif" "*~") projectile-globally-ignored-files))

(when (eq system-type 'darwin)
  (global-set-key (kbd "s-T") 'projectile-find-file))
