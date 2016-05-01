(req-package paredit
  :require (evil evil-paredit)

  :init
  (add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
  (add-hook 'lisp-mode-hook 'enable-paredit-mode)
  (add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
  (add-hook 'scheme-mode-hook 'enable-paredit-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook 'enable-paredit-mode)
  (add-hook 'emacs-lisp-mode-hook 'evil-paredit-mode)

  :config
  (evil-define-key 'normal paredit-mode-map
    (kbd "C-0") 'paredit-forward-slurp-sexp
    (kbd "C-9") 'paredit-backward-slurp-sexp
    (kbd "M-0") 'paredit-forward-barf-sexp
    (kbd "M-9") 'paredit-backward-barf-sexp))
