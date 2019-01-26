;;;;;;;;;;;;;;;;;;
;;              ;;
;;   Org mode   ;;
;;              ;;
;;;;;;;;;;;;;;;;;;

(with-eval-after-load 'org-agenda
  (require 'org-projectile)
  (push (org-projectile-todo-files) org-agenda-files))

(setq
 spaceline-org-clock-p t  ; To permanently enable mode line display of org clock
 org-latex-prefer-user-labels t  ; Support for CUSTOM_ID in org export latex:
 org-startup-indented t  ; Always turn on org-indent-mode
 )
;;   Org mode end



;;;;;;;;;;;;;;;;;;;;;
;;                 ;;
;;   Spell check   ;;
;;                 ;;
;;;;;;;;;;;;;;;;;;;;;

;; Disable flycheck in prog-mode buffers
(add-hook 'flyspell-mode-hook
          (lambda ()
            (when (derived-mode-p 'prog-mode)
              (flyspell-mode-off))))
;;   Spell check end


;;;;;;;;;;;;;;;;;;;;;;;
;;                   ;;
;;   Miscellaneous   ;;
;;                   ;;
;;;;;;;;;;;;;;;;;;;;;;;





;;;;;;;;;;;;;
;;         ;;
;;   C++   ;;
;;         ;;
;;;;;;;;;;;;;

;; (use-package ccls
;;   :commands lsp-ccls-enable
;;   :init
;;   (defun ccls/enable ()
;;     "Enable ccls in current buffer."
;;     (interactive)
;;     (condition-case nil
;;         (lsp-ccls-enable)
;;       (user-error nil)))

;;   (defun ccls/enable-hook ()
;;     "Enable ccls whenever a C/C++ file opens."
;;     (interactive)
;;     (add-hook 'c-mode-common-hook #'ccls/enable))

;;   (defun ccls/disable-hook ()
;;     "Remove ccls from c-mode-common-hook."
;;     (interactive)
;;     (remove-hook 'c-mode-common-hook #'ccls/enable))
;;   (with-eval-after-load 'c++-mode
;;     (define-key c++-mode-map (kbd "M-.") 'lsp-ui-peek-jump-forward)
;;     (define-key c++-mode-map (kbd "M-,") 'lsp-ui-peek-jump-backward)))
;;   C++ end



;;;;;;;;;;;;;;;
;;           ;;
;;   Shell   ;;
;;           ;;
;;;;;;;;;;;;;;;

(with-eval-after-load "esh-opt"
  (autoload 'epe-theme-dakrone "eshell-prompt-extras")
  (setq eshell-prompt-function 'epe-theme-dakrone))
;;   Shell end
