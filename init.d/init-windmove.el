(req-package windmove
  :config
  (when (fboundp 'windmove-default-keybindings) ; move between windows
    (windmove-default-keybindings)))
