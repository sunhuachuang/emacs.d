;;; init-web.el --- web-mode
;;; Commentary:
;;; Code:

(require-package 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.blade\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode)) ;; erb
(add-to-list 'auto-mode-alist '("\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.j2\\'" . web-mode)) ;; jinja2
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ejs\\'" . web-mode)) ;; js
(add-to-list 'auto-mode-alist '("\\.eex\\'" . web-mode)) ;; phoenix

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 4)
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)

(setq web-mode-enable-auto-pairing t)
(setq web-mode-disable-auto-pairing nil)

;; disable {} auto pairing in electric-pair-mode for web-mode
(add-hook 'web-mode-hook
          (lambda ()
            (setq-local electric-pair-inhibit-predicate
                        `(lambda (c)
                           (if (char-equal c ?{) t (,electric-pair-inhibit-predicate c))))))

(setq web-mode-enable-auto-expanding t)
(setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-current-element-highlight t)

(provide 'init-web)
;;; init-web.el ends here
