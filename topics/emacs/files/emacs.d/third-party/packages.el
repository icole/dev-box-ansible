(require 'package+)

(dolist (repo '(("melpa" . "http://melpa.org/packages/")))
  (add-to-list 'package-archives repo))

(package-manifest 'keyfreq
                  'paredit
                  'racket-mode
                  'enh-ruby-mode
                  'nyan-mode
                  'rainbow-delimiters
                  'projectile
                  'projectile-rails
                  'grizzl
                  'monokai-theme
                  'git-gutter
                  'rvm
                  'multiple-cursors
                  'magit
                  'erc
                  'twittering-mode
                  'sr-speedbar
                  'auto-dim-other-buffers
                  'web-mode
                  'yaml-mode
                  'feature-mode
                  'coffee-mode
                  'popwin
                  'sass-mode
                  'multi-term
                  'warm-night-theme
                  'alchemist
                  'elixir-mode
                  'sunshine
                  'web-beautify
                  'company
                  )
