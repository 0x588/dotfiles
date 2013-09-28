(require 'anything-config)
(require 'anything-grep)

(setq anything-input-idle-delay 0.1)

;; replace commands
(define-key global-map (kbd "C-x b") 'anything-for-files)
(define-key global-map (kbd "M-y")   'anything-show-kill-ring)
(define-key global-map (kbd "M-x")   'anything-M-x)
;; anything comamnd
(define-key global-map (kbd "C-z") 'anything-command-map)
(define-key anything-command-map (kbd "r") 'anything-resume)
(define-key anything-command-map (kbd "o") 'anything-occur)
(define-key anything-command-map (kbd "g") 'anything-grep)

(defun my-anything ()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-buffers+
     anything-c-source-recentf)
   "*anything my-anything*"))
(define-key global-map (kbd "C-q") 'my-anything)

(define-key anything-map "\C-z" 'anything-execute-persistent-action)
