(require 'virtualenvwrapper)
(venv-initialize-interactive-shells) ;; if you want interactive shell support
(venv-initialize-eshell) ;; if you want eshell support
(setq projectile-switch-project-action
      '(lambda ()
         (venv-projectile-auto-workon)
         (projectile-find-file)))
(setq-default mode-line-format (cons '(:exec venv-current-name) mode-line-format))
(load-theme 'monokai t)
