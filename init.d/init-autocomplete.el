(req-package auto-complete
  :require (goto-chg-1.6 auto-complete-config)
  :config
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
  (ac-config-default)
  (setq ac-use-quick-help nil)
  (setq ac-delay 0.2)
  (setq ac-auto-show-menu t))
