(when (maybe-require-package 'flycheck)
  (add-hook 'after-init-hook 'global-flycheck-mode)
  (setq flycheck-display-errors-function #'flycheck-display-error-messages-unless-error-list)

  (maybe-require-package 'flycheck-pos-tip)
  ;;(with-eval-after-load 'flycheck
  ;;'(add-hook 'flycheck-mode-hook 'flycheck-pos-tip-mode))
  (with-eval-after-load 'flycheck
    (flycheck-pos-tip-mode))

  (when (maybe-require-package 'flycheck-color-mode-line)
    (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)))


(provide 'better-flycheck)
