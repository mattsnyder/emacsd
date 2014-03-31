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
