;;; package --- init.el
;;; Commentary:
;;;   Sun's Config MIT-LICENSE
;;; Code:

(add-to-list 'load-path (expand-file-name "core" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "langs" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "vendor" user-emacs-directory))

;;; core
(require 'better-elpa)
(require-package 'diminish)
(require 'better-face)
;;(require 'better-sessions)
(require 'better-ivy)
(require 'better-editing)
(require 'better-company)
(require 'better-flycheck)
;;(require 'better-git)
;;(require 'better-projectile)
;;(require 'better-xterm)
(require 'better-netutils)
;;(require 'better-exwm)
;;(require 'better-input)

;;; langs
;;(require 'init-org)
(require 'init-elixir)
(require 'init-go)
;;(require 'init-haskell)
;;(require 'init-javascript)
;;(require 'init-lisp)
(require 'init-python)
;;(require 'init-ruby)
(require 'init-rust)
;;(require 'init-toml)
(require 'init-web)
;;(require 'init-yaml)



;; Emacs server is not required to run EXWM but it has some interesting uses
(server-start)

(provide 'init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("233bb646e100bda00c0af26afe7ab563ef118b9d685f1ac3ca5387856674285d" default dracula)))
 '(package-selected-packages
   (quote
    (yaml-mode haskell-mode solidity-mode markdown-mode pyim exwm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:

;;; init.el ends here
