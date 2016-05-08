; Disable startup message
(setq inhibit-startup-message t)

; Remove scratch message
(setq initial-scratch-message "")

; Disable splash screen
(setq inhibit-splash-screen t)

(menu-bar-mode -1)

; Hide the scrollbar
(scroll-bar-mode 0)

; Hide the tool bar
(tool-bar-mode 0)

; Highlight parens
(setq show-paren-delay 0)
(show-paren-mode 1)

; Show trailing whitespace
(setq-default show-trailing-whitespace t)

; Highlight current line
(global-hl-line-mode t)

; Font size
(set-frame-font "Inconsolata 14")

(req-package color-theme-sanityinc-tomorrow
  :if (display-graphic-p)
  :config
  (load-theme 'sanityinc-tomorrow-night t))

(req-package soft-charcoal-theme
  :if (display-graphic-p)
  :disabled
  :config
  (load-theme 'soft-charcoal t))

(req-package linum
  :config
  (setq linum-format "%d ")
  (dolist (hook '(emacs-lisp-mode-hook
                  lisp-mode-hook
                  c-mode-common-hook
                  sh-mode-hook))
	(add-hook hook 'linum-on)))
