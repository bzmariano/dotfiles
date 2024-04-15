(setq inhibit-startup-message t
      visible-bell nil
      display-line-numbers 'relative)

;; Fullscreen mode on init
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;;Custom themes made with ThemeCreator (https://mswift42.github.io/themecreator/)
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Disable line-numbers for this file-types
(dolist (mode '(org-mode-hook
                term-mode-hook
                shell-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers 0))))

(load-theme 'modus-vivendi t)
(global-set-key [escape] 'keyboard-escape-quit)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(hl-line-mode 1)
(blink-cursor-mode 1)
(recentf-mode 1)
(setq org-edit-src-content-indentation 0)
(electric-indent-mode -1)
(setq history-length 25)
(savehist-mode 1)
(save-place-mode 1)

;; this line is for emacs to not put its variables in my init.el
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; No pop up messages
(setq use-dialog-box nil)

(global-auto-revert-mode 1)

;; Revert Dired and other buffers
(setq global-auto-revert-non-file-buffers t)

;; Move customization variables to a separate file and load it
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)
(provide 'gui-tweaks)
;; End of gui-tweaks.el
