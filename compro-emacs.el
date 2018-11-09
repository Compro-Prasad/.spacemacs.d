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



;;;;;;;;;;;;;
;;         ;;
;;   IRC   ;;
;;         ;;
;;;;;;;;;;;;;

;; Server list:
(setq rcirc-server-alist
      '(("107.182.226.199"   ; "irc.freenode.net"
         :user-name "compro"
         :port "6666"
         :channels ("#emacs" "#thittam" "#spacemacs"))
        ("130.239.18.215"     ; "irc.gnome.org"
         :user-name "compro"
         :port "6666")
        ))
;;   IRC end



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



;;;;;;;;;;;;;;;;;;
;;              ;;
;;   Modeline   ;;
;;              ;;
;;;;;;;;;;;;;;;;;;

;; Flat mode-line:
(set-face-attribute 'mode-line nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)
;;   Modeline end



;;;;;;;;;;;;;;;;;;;;;;;
;;                   ;;
;;   Miscellaneous   ;;
;;                   ;;
;;;;;;;;;;;;;;;;;;;;;;;

(global-hl-line-mode 0)  ;; Don't highlight current line
(global-hungry-delete-mode t) ;; Enable hungry deletion

;; Remove line wrapping fringe indicators
(setf (cdr (assq 'continuation fringe-indicator-alist))
      ;; '(nil nil) ;; no continuation indicators
      '(nil right-curly-arrow) ;; right indicator only
      ;; '(left-curly-arrow nil) ;; left indicator only
      ;; '(left-curly-arrow right-curly-arrow) ;; default
      )
;; Miscellaneous end



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
