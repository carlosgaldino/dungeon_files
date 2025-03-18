;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Carlos Galdino"
      user-mail-address "carloshsgaldino@gmail.com")

(setq auto-save-default t
      make-backup-files t)
(setq confirm-kill-emacs nil)
;; This is only enabled for modes listed in
;; `doom-modeline-continuous-word-count-modes'
(setq doom-modeline-enable-word-count t)
(setq deft-directory "~/notes")
(setq xref-search-program 'ripgrep)

(add-to-list 'initial-frame-alist '(fullscreen . fullboth))

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
(setq doom-font (font-spec :family "MonoLisa" :size 16))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'kaolin-mono-dark)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(setq doom-scratch-initial-major-mode 'markdown-mode)

;; Disable option key
(setq ns-alternate-modifier nil)
;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(remove-hook 'doom-first-input-hook #'evil-snipe-mode)
(add-hook 'markdown-mode-hook 'turn-on-auto-fill)

;; (use-package! auto-dark
;;   :config
;;   (auto-dark-mode t)
;;   (setq auto-dark-dark-theme 'github-dark)
;;   (setq auto-dark-light-theme 'github-light))
(use-package! codespaces
  :ensure-system-package gh
  :config (codespaces-setup))
;; (use-package! company-box
;;   :hook (company-mode . company-box-mode))
;; accept completion from copilot and fallback to company
;; (use-package! copilot
;;   ;; :hook (prog-mode . copilot-mode)
;;   ;; :if (and (bound-and-true-p copilot-mode))
;;   :bind (:map copilot-completion-map
;;               ("<tab>" . 'copilot-accept-completion)
;;               ("TAB" . 'copilot-accept-completion)
;;               ("C-TAB" . 'copilot-accept-completion-by-word)
;;               ("C-<tab>" . 'copilot-accept-completion-by-word)
;;               ("C-S-TAB" . 'copilot-accept-completion-by-line)
;;               ("C-S-<tab>" . 'copilot-accept-completion-by-line)
;;               ("C-ESC" . 'copilot-next-completion)
;;               ("C-S-ESC" . 'copilot-previous-completion)))

;; (after! (evil copilot)
;;   ;; Define the custom function that either accepts the completion or does the default behavior
;;   (defun my/copilot-tab-or-default ()
;;     (interactive)
;;     (if (and (bound-and-true-p copilot-mode)
;;              ;; Add any other conditions to check for active copilot suggestions if necessary
;;              )
;;         (copilot-accept-completion)
;;       (evil-insert 1))) ; Default action to insert a tab. Adjust as needed.

;;   ;; Bind the custom function to <tab> in Evil's insert state
;;   (evil-define-key 'insert 'global (kbd "<tab>") 'my/copilot-tab-or-default))
;; (use-package! all-the-icons
;;   :if (display-graphic-p))
(use-package! literate-calc-mode
  :ensure t)
(use-package! lsp
  :custom
  (lsp-headerline-breadcrumb-segments '(project file symbols))
  (lsp-signature-auto-activate nil)
  (lsp-signature-doc-lines 1)
  (lsp-signature-render-documentation nil)
  (lsp-rust-analyzer-cargo-watch-command "clippy")
  ;; (lsp-rust-analyzer-server-display-inlay-hints t)
  (cargo-process-reload-on-modify t))
(use-package! lsp-ui
  :custom
  (lsp-ui-sideline-show-hover nil)
  (lsp-ui-doc-enable nil)
  (lsp-ui-sideline-show-diagnostics nil))
(use-package! magit
  :hook (magit-mode . magit-delta-mode))
(use-package! magit-todos
  :after magit
  :config
  (magit-todos-mode 1))
;; (define-key magit-todos-section-map "j" nil))
(map! :desc "List project todos"
      :leader
      "p t" #'magit-todos-list)
(use-package! tree-sitter
  :custom
  (tree-sitter-syntax-highlight-enable t)
  (tree-sitter-fold-enable t)
  (tree-sitter-fold-indicators-enable t))
(use-package! zig-mode
  :hook ((zig-mode . lsp-deferred))
  :custom (zig-format-on-save nil)
  :config
  (after! lsp-mode
    (add-to-list 'lsp-language-id-configuration '(zig-mode . "zig"))
    (lsp-register-client
     (make-lsp-client
      :new-connection (lsp-stdio-connection "zls --config-path /Users/carlosgaldino/zls.json")
      :major-modes '(zig-mode)
      :server-id 'zls))))
(setq lsp-zig-zls-executable "/opt/homebrew/bin/zls")

(after! beancount
  (setq-default lsp-beancount-langserver-executable "beancount-language-server"))
(after! ccls
  (setq ccls-initialization-options '(:index (:comments 2) :completion (:detailedLabel t)))
  (set-lsp-priority! 'ccls 2)) ; optional as ccls is the default in Doom
(after! deft
  (setq deft-default-extension "md")
  (setq deft-recursive t)
  (setq deft-use-filename-as-title t))
(after! disaster
  (setq disaster-cc "clang")
  (setq disaster-cflags "-Wall -std=c23"))
(after! go-mode
  (setq-default gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save))
(after! flycheck
  ;; Disable highlighting errors in the buffer.
  (setq flycheck-highlighting-mode nil))
(after! javascript
  (setq lsp-clients-typescript-npm-location "bun"))
(after! kaolin-themes
  (kaolin-treemacs-theme))
(after! lsp
  (setq lsp-headerline-breadcrumb-enable t)
  (setq lsp-headerline-breadcrumb-enable-diagnostics nil)
  (setq lsp-lens-enable nil)
  (setq lsp-completion-enable nil))
;; (setq lsp-inlay-hint-enable t))
(after! rustic
  (setq rustic-cargo-check-arguments "--workspace --all-targets")
  (setq rustic-default-clippy-arguments "--workspace --all-targets")
  (setq rustic-default-test-arguments "--workspace --all-targets"))
(map! :n "RET" #'evil-ex-nohighlight)
(map! :desc "Open documentation for symbol"
      :map rust-mode-map
      :localleader
      "d" #'lsp-rust-analyzer-open-external-docs)
;; Conflicts with `workspaces'
;; (map! :n "SPC TAB" #'evil-switch-to-windows-last-buffer)
;; (setq global-so-long-mode nil)
(after! so-long
  (setq-default so-long-threshold 10000))

(after! vc
  (setq-default vc-handled-backends '(Git)))
(after! tramp
  (add-to-list 'tramp-remote-path 'tramp-own-remote-path)
  (setq-default tramp-ssh-controlmaster-options ""))

(setq-default blink-cursor-mode 0)
(blink-cursor-mode t)
(setq-default blink-cursor-blinks 0)

(with-eval-after-load 'git-timemachine
  (evil-make-overriding-map git-timemachine-mode-map 'normal)
  ;; force update evil keymaps after git-timemachine-mode loaded
  (add-hook 'git-timemachine-mode-hook #'evil-normalize-keymaps))

(defun copilot-mode-line ()
  (if (bound-and-true-p copilot-mode)
      (add-to-list 'global-mode-string '("  "))
    (setq global-mode-string ())))
(add-hook 'copilot-mode-hook #'copilot-mode-line)
(add-hook 'html-mode-hook '(lambda () (setq-local apheleia-inhibit t)))
(add-hook 'web-mode-hook '(lambda () (setq-local apheleia-inhibit t)))
;; only for kaolin-mono-dark
(custom-set-faces
 '(minimap-active-region-background ((t (:background "#25352D"))))
 '(minimap-current-line-face ((t (:background "#68f3ca")))))

;; (use-package! zone)
;; (zone-when-idle 300)
