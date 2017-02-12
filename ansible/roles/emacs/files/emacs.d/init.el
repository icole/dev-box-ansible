(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib…
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(load-file "~/.emacs.d/gimme-cat.el")
(load-file "~/.cask/cask.el")
(load-file "~/.emacs.d/creds.el")
(require 'cask)
(require 'pallet)
(cask-initialize)
(pallet-mode t)
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))

(defun my-frame-config (frame)
  "Custom behaviours for new frames."
  (with-selected-frame frame
    (when (display-graphic-p)
      (scroll-bar-mode -1))))
;; run now
(my-frame-config (selected-frame))
;; and later
(add-hook 'after-make-frame-functions 'my-frame-config)

;; MAIN Configs
(require 'spaceline-config)
(setq powerline-default-separator 'wave)
(spaceline-spacemacs-theme)
(load-theme 'seti t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq ring-bell-function 'ignore)
(tool-bar-mode -1)
(menu-bar-mode -1)
(global-hl-line-mode 1)
(global-git-gutter-mode t)
(git-gutter:linum-setup)
(setq tab-width 2)
(ac-config-default)
(global-auto-complete-mode t)
(setq inhibit-splash-screen t)
(setq-default indent-tabs-mode nil)
(setq multi-term-program-switches "--login")
(setq sunshine-location "Seattle,WA")
(setq initial-major-mode (quote text-mode))
(global-linum-mode t)
(setq linum-format " %d  ")
(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")
(global-set-key [f8] 'neotree-toggle)
(ac-config-default)
(global-auto-complete-mode t)
(elpy-enable)
(setq css-indent-offset 2)
(setq typescript-indent-level 2)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(coffee-tab-width 2)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(cursor-type (quote bar))
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a632c5ce9bd5bcdbb7e22bf278d802711074413fd5f681f39f21d340064ff292" default)))
 '(fci-rule-color "#073642")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (rspec-mode powerline-evil spaceline helm mo-git-blame typescript-mode habitica yaml-mode web-mode web-beautify vagrant twittering-mode sunshine sublime-themes spacemacs-theme solarized-theme smex slim-mode seti-theme sass-mode rvm rainbow-delimiters racket-mode projectile-rails popwin paredit pallet nyan-mode neotree multiple-cursors multi-term monokai-theme magit less-css-mode keyfreq indent-guide grizzl git-gutter feature-mode evil-visual-mark-mode ensime enh-ruby-mode elpy dired+ darcula-theme coffee-mode beeminder auto-complete ansible ample-theme alchemist)))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(setq coffee-tab-width 2)

;; Indent guide
(indent-guide-global-mode)
(setq indent-guide-recursive t)
(setq indent-guide-char "|")

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

;; Language Mode Settings
(add-to-list 'auto-mode-alist '("\\.rkt$" . racket-mode))
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.feature$" . feature-mode))
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.php$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.exs$" . elixir-mode))
(add-to-list 'auto-mode-alist '("\\.slim$" . slim-mode))
(add-to-list 'auto-mode-alist '("\\.p[lm]$" . cperl-mode))
(add-to-list 'auto-mode-alist '("\\.less$" . less-css-mode))
(add-to-list 'auto-mode-alist '("\\.ts$" . typescript-mode))
(add-hook 'racket-mode-hook
          '(lambda ()
             (define-key racket-mode-map (kbd "C-c r") 'racket-run)))

;; KeyFreq
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)

;; Project Management
(projectile-global-mode)
(projectile-rails-global-mode)
(setq projectile-completion-system 'grizzl)

;; Paren stuff
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(rainbow-delimiters-mode)
(show-paren-mode 1)
(electric-pair-mode 1)

;; Perl stuff
(eval-after-load 'cperl-mode
  '(progn
     (define-key cperl-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
     (define-key cperl-mode-map (kbd "C-M-h") 'backward-kill-word)))

(global-set-key (kbd "C-h P") 'perldoc)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Custom Functions:
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun new-empty-buffer ()
  "Open a new empty buffer."
  (interactive)
  (let ((buf (generate-new-buffer "untitled")))
    (switch-to-buffer buf)
    (funcall (and initial-major-mode))
    (setq buffer-offer-save t)))

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

;; (defun cursor-shape-hook ()
;;     (if (equal (thing-at-point 'line) "\n") (setq cursor-type 'bar)
;;        (setq cursor-type 'box)))

;; (add-hook 'post-command-hook 'cursor-shape-hook)

(defun bury-compile-buffer-if-successful (buffer string)
  "Bury a compilation buffer if succeeded without warnings "
  (if (and
       (string-match "compilation" (buffer-name buffer))
       (string-match "finished" string)
       (not
        (with-current-buffer buffer
          **(goto-char 1)**
          (search-forward "warning" nil t))))
      (run-with-timer 1 nil
                      (lambda (buf)
                        (bury-buffer buf)
                        (switch-to-prev-buffer (get-buffer-window buf) 'kill))
                      buffer)))
(add-hook 'compilation-finish-functions 'bury-compile-buffer-if-successful)

(setq erc-hide-list '("JOIN" "PART" "QUIT"))

(defun prev-window ()
   (interactive)
   (other-window -1))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Keys & Menus:
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;###autoload
(progn
  (autoload 'inline-string-rectangle "inline-string-rectangle")
)
(global-set-key (kbd "C-x b")   'bs-show)
(global-set-key (kbd "C-x C-b") 'bs-show)
(global-set-key (kbd "C-c g")   'magit-status)
(global-set-key (kbd "C-c d")   'delete-line)
(global-set-key (kbd "C-c n")   'new-empty-buffer)
(global-set-key (kbd "C-c u")   'reset-ui)
(global-set-key (kbd "C-c t")   'toggle-eshell-visor)
(global-set-key (kbd "C-c C-k") 'gimme-cat)
(global-set-key (kbd "C-x p")   'prev-window)
(global-set-key [f12]           'toggle-fullscreen)
(global-set-key ">"             'my-indent-region)
(global-set-key "<"             'my-unindent-region)
;; Multiple Cursors
(global-set-key (kbd "C->")     'mc/mark-next-like-this)
(global-set-key (kbd "C-<")     'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
