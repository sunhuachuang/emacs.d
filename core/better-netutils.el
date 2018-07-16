;;; better-netutils.el --- eww-mode
;;; Commentary:
;;; Code:

(setq url-gateway-method 'socks)
(setq socks-server '("Default server" "127.0.0.1" 1080 5))

(setq url-gateway-local-host-regexp
      (concat "\\`" (regexp-opt '("localhost" "127.0.0.1" "mirrors.tuna.tsinghua.edu.cn")) "\\'"))

(provide 'better-netutils)

;;; better-netutils.el ends here
