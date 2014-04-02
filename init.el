(setq root-dir (file-name-directory
                (or (buffer-file-name) load-file-name)))

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(require 'cask "/Users/mattsnyder/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(add-to-list 'load-path "~/.emacs.d/custom")

(load "00keyboard-setup.el")
(load "01ruby.el")
(load "02autocomplete.el")
(load "03ido.el")
(load "04projectile.el")
(load "05indentation.el")
(load "06yasnippet.el")
(load "07markdown.el")
(load "08yaml.el")
(load "09coffeescript.el")
(load "10linenumbers.el")
(load "11haml.el")
(load "12dashatpoint.el")

;; eshell preferences
(add-hook 'eshell-mode-hook
          '(lambda nil
             (let ((path))
               (setq path "~/bin:/opt/local/bin:/usr/local/bin:/usr/bin:/bin")
               (setenv "PATH" path))
             (local-set-key "\C-u" 'eshell-kill-input)))

(defun eshell/cl ()
  "Command to clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

;; Org-mode settings
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)


(put 'downcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes (quote ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
