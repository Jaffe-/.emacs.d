(req-package evil
  :demand
  :require (evil-surround)
  :config
  (setq evil-move-cursor-back nil)
  (setq key-chord-two-keys-delay 0.5)
  (evil-mode 1)
  (global-evil-surround-mode))
