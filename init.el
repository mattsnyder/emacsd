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
;; (load "03smartparens.el")
(load "04projectile.el")
(load "05indentation.el")
(load "06yasnippet.el")
(load "07markdown.el")
(load "08yaml.el")
(load "09coffeescript.el")
(load "10linenumbers.el")
(load "11haml.el")
(load "12dashatpoint.el")
