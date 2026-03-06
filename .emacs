;; minimal-ish ~/.emacs config for fast start up.
;;
;; assumes package `magit` is installed


(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

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
 '(package-selected-packages '(darkroom magit)))

(display-time-mode t)  ;; display time in status bar.
(setq display-time-24hr-format nil)    ;; 24h format instead of 12h
(setq display-time-day-and-date t)   ;; also show day and date
;; (setq display-time-default-load-average nil) ;; hide system load averages

(global-visual-line-mode 1)  ;; dynamic word wrapping of long lines
(load-theme 'leuven t)

;; support copy and paste between emacs in terminal and MacOS
(setq select-enable-clipboard t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-hook 'text-mode-hook
          (lambda () (set-input-method "german-postfix")))


;; load nano-emacs
;;
;; install via ~git clone https://github.com/rougier/nano-emacs.git ~/.emacs.d/nano-emacs~
;; needed font: roboto-mono: ~brew install --cask font-roboto-mono

(setq nano-font-size 18)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/nano-emacs"))

;; If nano.el exists in the repo root:
(load (expand-file-name "nano.el" "~/.emacs.d/nano-emacs") nil t)


;; customize nano-emacs

(setq nano-font-family-monospaced "Roboto Mono")



;; ;; shell-agent, https://github.com/xenodium/agent-shell?tab=readme-ov-files
;; ;; Dependency: codex-acp
;; ;;   brew install codex-acp
;; 
;; ;; Refresh once if needed, then install agent-shell.
;; (unless (package-installed-p 'agent-shell)
;;   (unless package-archive-contents
;;     (package-refresh-contents))
;;   (package-install 'agent-shell))
;; 
;; (require 'agent-shell)



;; zone for fun
;;
;; Run zone after N seconds idle, but *in a dedicated buffer* (Org stays untouched)

(require 'zone)
(zone-when-idle 300)  ;; after 5 minutes
