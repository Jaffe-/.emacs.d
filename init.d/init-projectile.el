(req-package projectile
  :demand

  :config
  (setq projectile-indexing-method 'alien
        projectile-enable-caching t 
        projectile-completion-system 'ido)

  (projectile-global-mode))
