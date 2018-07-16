;; need cargo
;; cargo install racer
;; cargo install rustfmt

(when (maybe-require-package 'rust-mode)
  ;;(maybe-require-package 'cargo-mode)
  (maybe-require-package 'toml-mode)
  (maybe-require-package 'racer)

  (after-load 'rust-mode
    (add-hook 'rust-mode-hook #'racer-mode)
    (add-hook 'racer-mode-hook #'eldoc-mode)
    (add-hook 'racer-mode-hook #'company-mode)
    ;;(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
    (setq company-tooltip-align-annotations t)
    (setq rust-format-on-save t)
    )
  )

(when (maybe-require-package 'flycheck-rust)
  (after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(provide 'init-rust)
