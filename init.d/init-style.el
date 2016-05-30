(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(c-add-style "linux-work-style"
             '("cc-mode"
               (c-basic-offset . 8)
               (indent-tabs-mode t)
               (tab-width . 8)))

(defun my-c-mode-common-hook ()
  (setq c-basic-offset tab-width)
  (setq c-indent-level tab-width)
  (c-set-offset 'substatement-open 0))

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(add-hook 'c++-mode-hook
     '(lambda()
        (font-lock-add-keywords
         nil '(;; complete some fundamental keywords
           ("\\<\\(void\\|unsigned\\|signed\\|char\\|short\\|bool\\|int\\|long\\|float\\|double\\)\\>" . font-lock-keyword-face)
           ;; add the new C++11 keywords
           ("\\<\\(alignof\\|alignas\\|constexpr\\|decltype\\|noexcept\\|nullptr\\|static_assert\\|thread_local\\|override\\|final\\)\\>" . font-lock-keyword-face)
           ("\\<\\(char[0-9]+_t\\)\\>" . font-lock-keyword-face)
           ;; PREPROCESSOR_CONSTANT
           ("\\<[A-Z]+[A-Z_]+\\>" . font-lock-constant-face)
           ;; hexadecimal numbers
           ("\\<0[xX][0-9A-Fa-f]+\\>" . font-lock-constant-face)
           ;; integer/float/scientific numbers
           ("\\<[\\-+]*[0-9]*\\.?[0-9]+\\([ulUL]+\\|[eE][\\-+]?[0-9]+\\)?\\>" . font-lock-constant-face)
           ;; user-types (customize!)
           ("\\<[A-Za-z_]+[A-Za-z_0-9]*_\\(t\\|type\\|ptr\\)\\>" . font-lock-type-face)
           ("\\<\\(xstring\\|xchar\\)\\>" . font-lock-type-face)
           ))
        ) t)

(defun add-multiple-to-list (lst to-add)
  (dolist (element to-add)
    (add-to-list lst element)))

(req-package lisp-extra-font-lock
  :config
  (add-multiple-to-list 'lisp-extra-font-lock-let-functions
                        '("labels"
                          "flet"
                          "destructuring-bind"
                          "handler-bind"))
  (add-multiple-to-list 'lisp-extra-font-lock-defun-functions
                        '("defmethod"
                          "define-condition"
                          "defclass"))
  (lisp-extra-font-lock-global-mode 1))

(req-package highlight-numbers
	:config
	(add-hook 'prog-mode-hook 'highlight-numbers-mode))

(provide 'init-style)
