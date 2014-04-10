(global-set-key [home] 'beginning-of-line)
(global-set-key [select] 'end-of-line)
(define-key global-map (kbd "C-a") 'beginning-of-line)
(define-key global-map (kbd "C-e") 'end-of-line)
(define-key global-map (kbd "M-g") 'goto-line)
(define-key global-map (kbd "C-c r") 'replace-string)
(define-key global-map (kbd "C-c l") 'load-file)
(define-key global-map (kbd "C-c f") 'indent-region)
(define-key global-map (kbd "C-h") 'delete-backward-char)
(define-key global-map (kbd "C-c i") 'indent-region)
(define-key global-map (kbd "C-c g") 'ag-regexp)
(define-key global-map (kbd "C-c G") 'ag-project-regexp)
(define-key global-map (kbd "M-h") 'backward-kill-word)
(define-key global-map (kbd "C-c m") 'magit-status)
(define-key global-map (kbd "C-x w") 'global-whitespace-mode)

(keyboard-translate ?\C-h ?\C-?)

;; command -> meta
(setq ns-command-modifier 'meta)
