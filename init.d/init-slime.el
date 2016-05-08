(req-package slime
  :require (slime-autoloads)
  :config
  (setq inferior-lisp-program "sbcl")
  (slime-setup '(slime-fancy)))

(req-package ac-slime
  :require (auto-complete slime-autoloads)
  :config
  (add-hook 'slime-mode-hook 'set-up-slime-ac)
  (add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
  (eval-after-load "auto-complete"
    '(add-to-list 'ac-modes 'slime-repl-mode)))
