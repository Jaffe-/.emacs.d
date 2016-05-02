(setq
 init-dir (expand-file-name "init.d" user-emacs-directory)
 custom-file (expand-file-name "init-custom.el" init-dir))

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'req-package)
  (package-refresh-contents)
  (package-install 'req-package))
(require 'req-package)

(req-package-force load-dir
  :defer t

  :init
  (setq
   force-load-messages nil
   load-dir-debug nil
   load-dir-recursive nil)

  :config
  (load-dir-one init-dir)
  (req-package-finish))
