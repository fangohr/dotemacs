;; minimal-ish ~/.emacs config for fast start up.
;;
;; assumes package `magit` is installed

(require 'package)

;; tempo snippet for org-mode
(with-eval-after-load 'org
  (require 'org-tempo))  ;; enables <s TAB, <el TAB, etc.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-safe-remote-resources
'("\\`https://fniessen\\.github\\.io/org-html-themes/org/theme-readtheorg-local\\.setup\\'"))
 '(package-selected-packages '(magit markdown-mode darkroom)))

(display-time-mode t)  ;; display time in status bar.
(setq display-time-24hr-format nil)    ;; 24h format instead of 12h
(setq display-time-day-and-date t)   ;; also show day and date
;; (setq display-time-default-load-average nil) ;; hide system load averages

(global-visual-line-mode 1)  ;; dynamic word wrapping of long lines
(load-theme 'leuven t)

;; support copy and paste between emacs in terminal and MacOS
(setq select-enable-clipboard t)
