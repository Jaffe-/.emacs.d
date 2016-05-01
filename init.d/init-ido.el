(req-package ido
  :demand
  :require (ido-vertical-mode ido-ubiquitous flx-ido)

  :config 
  (setq ido-enable-prefix nil
        ido-case-fold t
        ido-enable-flex-matching t
        ido-auto-merge-work-directories-length -1
        ido-create-new-buffer 'always
        ido-use-filename-at-point nil
        ido-use-faces nil
        ido-vertical-show-count t)

  (ido-mode 1)
  (ido-ubiquitous-mode 1)
  (ido-vertical-mode 1))

(req-package smex
  :demand

  :config 
  (global-set-key (kbd "M-x") 'smex))
