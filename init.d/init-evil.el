(req-package evil
  :demand
  :require (evil-surround)
  :config
  (setq evil-move-cursor-back nil)
  (setq key-chord-two-keys-delay 0.5)
  (evil-mode 1)
  (key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
  (global-evil-surround-mode))
