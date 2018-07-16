(ignore-errors
  (require-package 'erlang))

(when (package-installed-p 'erlang)
  (require 'erlang-start))

(require-package 'elixir-mode)
(require-package 'alchemist)

(after-load 'elixir-mode
  (add-hook 'elixir-mode-hook 'alchemist-mode))

(provide 'init-elixir)
