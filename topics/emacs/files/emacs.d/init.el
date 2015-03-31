(add-to-list 'load-path "~/.emacs.d/third-party")
;;Autoload packages
(load "packages.el")

(server-start)

;; @TODO set to only with window-system
;(nyan-mode 1)
(scroll-bar-mode -1)

;; MAIN Configs
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq ring-bell-function 'ignore)
(tool-bar-mode -1)
(menu-bar-mode -1)
(global-hl-line-mode 1)
(global-git-gutter-mode t)
(git-gutter:linum-setup)
(setq tab-width 2)
(setq inhibit-splash-screen t)
(set-default-font "-*-Lucida Grande-normal-normal-normal-*-*-*-*-*-p-0-iso10646-1")
(setq-default indent-tabs-mode nil)
(setq multi-term-program-switches "--login")
(setq sunshine-location "Seattle,WA")
(set-fringe-mode '(1 . 0))
(global-linum-mode t)
(setq linum-format " %d  ")


;; Popwin
(autoload 'popwin-mode "popwin" nil t)
(popwin-mode 1)

;; popwin settings
(setq popwin:special-display-config
      '(("*Help*" :height 30 :stick t)
        ("*Completions*" :noselect t)
        ("*compilation*" :noselect t)
        ("*Messages*")
        ("*Occur*" :noselect t)
        ("*magit: emacs*" :noselect t :height 20 :width 80)
        ("*magit-commit*" :noselect t :height 20 :width 80)
        ("COMMIT_EDITMSG" :noselect t :height 5 :width 80)
        ("*magit-diff*" :noselect t :height 30 :width 80)
        ("*magit-edit-log*" :noselect t :height 15 :width 80)
        ("*magit-process*" :noselect t :height 15 :width 80)
        ;;("*eshell*" :height 20)
        ("*Kill Ring*" :height 30)
        ("*Compile-Log" :height 20 :stick t)
        ))

(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(blink-cursor-mode nil)
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (warm-night)))
 '(custom-safe-themes
   (quote
    ("b32395a616bbb47d046772e901c7868bbe05a02e2e76ba42db6c121b1565bd04" "4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" "b7d8113de2f7d9a3cf42335d8eed8415b5a417e7f6382e59076f9f4ae4fa4cee" "b73c22111068f51f332cf73ea2eae196b2377c3218054c1bcd436e27e5eeac3e" "1d9492749ca290d1702b2f331b99a2692cda19fb1e4aae4b9e75515027afbf3b" "57f8801351e8b7677923c9fe547f7e19f38c99b80d68c34da6fa9b94dc6d3297" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(fci-rule-color "#49483E")
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#49483E" . 100))))
 '(magit-diff-use-overlays nil)
 '(magit-use-overlays nil)
 '(menu-bar-mode nil)
 '(racket-program "~/Applications/Racket v6.1/bin/racket")
 '(show-paren-mode t)
 '(sr-speedbar-right-side nil)
 '(syslog-debug-face
   (quote
    ((t :background unspecified :foreground "#A1EFE4" :weight bold))))
 '(syslog-error-face
   (quote
    ((t :background unspecified :foreground "#F92672" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#A6E22E"))))
 '(syslog-info-face
   (quote
    ((t :background unspecified :foreground "#66D9EF" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#E6DB74"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#FD5FF0"))))
 '(syslog-warn-face
   (quote
    ((t :background unspecified :foreground "#FD971F" :weight bold))))
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Lucida Grande" :foundry "nil" :slant normal :weight normal :height 120 :width normal)))))
(defadvice yes-or-no-p (around prevent-dialog activate)
  "Prevent yes-or-no-p from activating a dialog"
  (let ((use-dialog-box nil))
    ad-do-it))
(defadvice y-or-n-p (around prevent-dialog-yorn activate)
  "Prevent y-or-n-p from activating a dialog"
  (let ((use-dialog-box nil))
    ad-do-it))

(add-to-list 'auto-mode-alist '("\\.rkt$" . racket-mode))
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.feature$" . feature-mode))
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.php$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.exs$" . elixir-mode))

(add-hook 'racket-mode-hook
          '(lambda ()
             (define-key racket-mode-map (kbd "C-c r") 'racket-run)))

;; KeyFreq
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)

;; Multiple Cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


;; Project Management
(projectile-global-mode)
;(projectile-rails-mode)
(setq projectile-completion-system 'grizzl)

;; Paren stuff
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(rainbow-delimiters-mode)
(show-paren-mode 1)
(electric-pair-mode 1)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Keys & Menus:
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;###autoload
(progn
  (autoload 'inline-string-rectangle "inline-string-rectangle")
  (global-set-key (kbd "C-x C-b") 'bs-show))
  (global-set-key (kbd "C-c g") 'magit-status)
  (global-set-key (kbd "C-c d") 'delete-line)

  ;;indent/unindent
  ;;http://stackoverflow.com/a/11624677
  (defun my-indent-region (N)
  (interactive "p")
  (if (use-region-p)
      (progn (indent-rigidly (region-beginning) (region-end) (* N 2))
             (setq deactivate-mark nil))
    (self-insert-command N)))

  (defun my-unindent-region (N)
    (interactive "p")
    (if (use-region-p)
	(progn (indent-rigidly (region-beginning) (region-end) (* N -2))
	       (setq deactivate-mark nil))
      (self-insert-command N)))

  (global-set-key ">" 'my-indent-region)
  (global-set-key "<" 'my-unindent-region)

;; make backup to a designated dir, mirroring the full path

(setq auto-save-default nil)
(defun my-backup-file-name (fpath)
  "Return a new file path of a given file path.
If the new path's directories does not exist, create them."
  (let* (
        (backupRootDir "~/.emacs.d/emacs-backup/")
        (filePath (replace-regexp-in-string "[A-Za-z]:" "" fpath )) ; remove Windows driver letter in path, ⁖ “C:”
        (backupFilePath (replace-regexp-in-string "//" "/" (concat backupRootDir filePath "~") ))
        )
    (make-directory (file-name-directory backupFilePath) (file-name-directory backupFilePath))
    backupFilePath
  )
)

(setq make-backup-file-name-function 'my-backup-file-name)

;;Fullscreen
(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
                         (if (equal 'fullboth current-value)
                             (if (boundp 'old-fullscreen) old-fullscreen nil)
                           (progn (setq old-fullscreen current-value)
                                  'fullboth)))))

(global-set-key [f12] 'toggle-fullscreen)

(defun cursor-shape-hook ()
    (if (equal (thing-at-point 'line) "\n") (setq cursor-type 'bar)
       (setq cursor-type 'box)))

(add-hook 'post-command-hook 'cursor-shape-hook)
