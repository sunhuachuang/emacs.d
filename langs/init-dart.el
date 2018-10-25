(require-package 'dart-mode)

(setq dart-sdk-path "/home/sun/.local/flutter/bin/cache/dart-sdk")

(setq dart-enable-analysis-server t)
(add-hook 'dart-mode-hook 'flycheck-mode)
(setq dart-format-on-save t)

(provide 'init-dart)
