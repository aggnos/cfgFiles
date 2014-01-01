;;THEME
;;;; (require 'color-theme)
;; (color-theme-initialize)
;; (color-theme-pok-wob)
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/customThemes")
(load-theme 'gruber-darker t)
;;(load-file "~/.emacs.d/elpa/zenburn-theme.el")

;; Save all backup file in this directory.
(setq backup-directory-alist (quote ((".*" . "~/.emacs.d/emacs_backups/"))))

;;disable menu
(menu-bar-mode -1)
;;line number
(global-linum-mode t)
;;(setq linum-format “%d “)
(setq linum-format "%2d: ")


;;Marmalade is a package archive for Emacs Lisp
(add-to-list 'load-path "~/.emacs.d/")
(load "package.el")

(require 'package)
(add-to-list 'package-archives
	     '("marmalade" .
	       "http://marmalade-repo.org/packages/"))
(package-initialize)

(smartparens-global-mode 1)
(require 'auto-complete)
(global-auto-complete-mode t)
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(add-to-list 'load-path "~/.emacs.d/packages/yasnippet-x.y.z")
(require 'yasnippet) ;; not yasnippet-bundle
(yas-global-mode 1)

(require 'cc-mode)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("5baa53c0748d6a530268a36dda54a5c06330295d5218f9b4b7089bbe9f5e6d29" "7cab14c544fad9653a07e48d42ea266e5e6743dc3fd7fd9de16b0cae9ceeffe3" "38c4fb6c8b2625f6307f3dde763d5c61d774d854ecee9c5eb9c5433350bc0bef" "d6a00ef5e53adf9b6fe417d2b4404895f26210c52bb8716971be106550cea257" "3dd173744ae0990dd72094caef06c0b9176b3d98f0ee5d822d6a7e487c88d548" default)))
 '(custom-theme-load-path (quote ("/home/aggnos/.emacs.d/elpa/django-theme-1.3.0/" t "/home/aggnos/.emacs.d/elpa/customThemes/")))
 '(show-smartparens-global-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-type-face ((t (:foreground "#95a99f" :weight bold)))))

