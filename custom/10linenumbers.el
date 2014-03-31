(add-hook 'abg-code-modes-hook
          (lambda () (linum-mode 1)))

(add-hook 'enh-ruby-mode-hook
          (lambda () (run-hooks 'abg-code-modes-hook)))
