(req-package auto-complete
  :require (auto-complete-config)
  :config
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
  (ac-config-default)
  (setq ac-use-quick-help t)
  (setq ac-delay 0.2)
  (setq ac-auto-show-menu t))
