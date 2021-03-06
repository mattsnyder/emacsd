;; Split Windows
(global-set-key [f6] 'split-window-horizontally)
(global-set-key [f7] 'split-window-vertically)
(global-set-key [f8] 'delete-window)

;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
(windmove-default-keybindings)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; Some Mac-friendly key counterparts
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-z") 'undo)
(global-set-key (kbd "M-c") 'copy-region-as-kill)
(global-set-key (kbd "M-a") 'mark-whole-buffer)

;; Keyboard Overrides
(global-set-key [(meta up)] 'beginning-of-buffer)
(global-set-key [(meta down)] 'end-of-buffer)

(global-set-key [(meta shift right)] 'ido-switch-buffer)
(global-set-key [(meta shift up)] 'recentf-ido-find-file)
(global-set-key [(meta shift down)] 'ido-find-file)
(global-set-key [(meta shift left)] 'magit-status)

(global-set-key [(meta H)] 'delete-other-windows)
(global-set-key [(meta D)] 'backward-kill-word)
(global-set-key [(meta N)] 'cleanup-buffer)
(global-set-key [(control \])] 'indent-rigidly)

(add-hook 'c-mode-hook
          '(lambda ()
             (define-key c-mode-map "\C-m" 'newline-and-indent)))

(prefer-coding-system 'utf-8)
