(add-to-list 'load-path "~/.emacs.d/.cask/24.3.1/elpa/dash-20140327.116/")
(autoload 'dash-at-point "dash-at-point"
          "Search the word at point with Dash." t nil)
(global-set-key "\C-cd" 'dash-at-point)
(global-set-key "\C-ce" 'dash-at-point-with-docset)
