(when (maybe-require-package 'go-mode)
  (maybe-require-package 'company-go)
  (maybe-require-package 'go-eldoc)
  (maybe-require-package 'gotest)
  )

(eval-after-load 'go-mode
  '(progn
     (defun prelude-go-mode-defaults ()
       ;; Add to default go-mode key bindings
       (let ((map go-mode-map))
         (define-key map (kbd "C-c a") 'go-test-current-project) ;; current package, really
         (define-key map (kbd "C-c m") 'go-test-current-file)
         (define-key map (kbd "C-c .") 'go-test-current-test)
         (define-key map (kbd "C-c b") 'go-run)
         (define-key map (kbd "C-h f") 'godoc-at-point))

       ;; Prefer goimports to gofmt if installed
       (let ((goimports (executable-find "goimports")))
         (when goimports
           (setq gofmt-command goimports)))

       ;; gofmt on save
       (add-hook 'before-save-hook 'gofmt-before-save nil t)

       ;; stop whitespace being highlighted
       ;; (whitespace-toggle-options '(tabs))
       (whitespace-toggle-options (setq whitespace-style '(face empty trailing lines-tail)))

       ;; Company mode settings
       (set (make-local-variable 'company-backends) '(company-go))

       ;; El-doc for Go
       (go-eldoc-setup)

       ;; CamelCase aware editing operations
       (subword-mode +1))

     (setq prelude-go-mode-hook 'prelude-go-mode-defaults)

     (add-hook 'go-mode-hook (lambda ()
                               (run-hooks 'prelude-go-mode-hook)))))

(provide 'init-go)
