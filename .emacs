(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))

(setq package-enable-at-startup nil)
(setq make-backup-files nil)
(setq column-number-mode t)
(setq linum-format "%d ")

(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-safe-themes
   (quote
    ("f8cf128fa0ef7e61b5546d12bb8ea1584c80ac313db38867b6e774d1d38c73db" "a4d11382b57e6c08c26db2793670642b1fbb828e642cf41ae58685b4e37aeca9" default)))
 '(package-selected-packages (quote (helm evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'evil)

(evil-mode t)
(menu-bar-mode -1)

(if (display-graphic-p)
    (progn
      (toggle-scroll-bar -1)
      (tool-bar-mode -1)))
