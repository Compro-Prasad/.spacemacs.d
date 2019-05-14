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


;;;;;;;;;;;;;;;
;;           ;;
;;   Shell   ;;
;;           ;;
;;;;;;;;;;;;;;;

(with-eval-after-load "esh-opt"
  (autoload 'epe-theme-dakrone "eshell-prompt-extras")
  (setq eshell-prompt-function 'epe-theme-dakrone))
;;   Shell end
