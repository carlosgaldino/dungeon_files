;;; github-dark.el --- A light theme inspired by GitHub's color scheme
;;; Commentary:
;;; Code:

(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(autothemer-deftheme github-dark "A light theme inspired by GitHub's color scheme"
                     ((((class color) (min-colors #xFFFFFF)))

                      (github-dark-bg "#010409")
                      (github-dark-bg-hl "#161b22")
                      (github-dark-bg-paren "#474747")
                      (github-dark-blue "#58a6ff")
                      (github-dark-blue-d "#a5d6ff")
                      (github-dark-blue-l "#58a6ff")
                      (github-dark-blue-ll "#0d419d")
                      (github-dark-coral "#f78166")
                      (github-dark-fg "#ffffff")
                      (github-dark-gray-d "#484f58")
                      (github-dark-gray-l "#484f58")
                      (github-dark-gray-ll "#6e7681")
                      (github-dark-gray-lll "#161b22")
                      (github-dark-gray-llll "#0d1117")
                      (github-dark-green "#196c2e")
                      (github-dark-green-d "#2ea043")
                      (github-dark-keyword "#ff7b72")
                      (github-dark-keyword-constant "#58a6ff")
                      (github-dark-orange "#ffa657")
                      (github-dark-pink "#7d2457")
                      (github-dark-purple "#d2a8ff")
                      (github-dark-red "#f85149")
                      (github-dark-red-l "#b62324")
                      (github-dark-red-ll "#8e1519")
                      (github-dark-yellow "#845306")
                      (github-dark-yellow-l "#693e00")
                      (github-dark-yellow-ll "#845306")
                      (github-dark-yellow-lll "#262219"))

                     (
                      (link (:foreground github-dark-blue :underline t))
                      (homoglyph (:foreground github-dark-yellow))
                      (cursor (:background github-dark-fg))
                      (default (:foreground github-dark-fg :background github-dark-bg))
                      (lazy-highlight (:background github-dark-blue-ll))
                      (highlight (:background github-dark-bg-hl))
                      (line-number (:foreground github-dark-gray-l))
                      (lsp-face-highlight-textual (:background github-dark-yellow-l))
                      (lsp-face-highlight-read (:background github-dark-yellow-l))
                      (lsp-headerline-breadcrumb-symbols-face (:foreground github-dark-fg :weight 'bold))
                      (error (:foreground github-dark-red)) ;; :background "#e3d2d2"))
                      (region (:background github-dark-yellow-lll))
                      (isearch (:background github-dark-blue-l))
                      (warning (:foreground github-dark-coral))
                      (popup-tip-face (:background github-dark-red-l :foreground github-dark-fg))
                      (git-commit-summary (:foreground github-dark-blue))
                      (git-commit-pseudo-header (:foreground github-dark-blue))
                      (success (:foreground github-dark-green-d))

                      (doom-modeline-info (:foreground github-dark-green-d))
                      (doom-modeline-buffer-file (:foreground github-dark-blue))
                      (doom-modeline-buffer-major-mode (:foreground github-dark-blue-d))
                      (doom-modeline-buffer-modified (:foreground github-dark-red :weight 'bold))
                      (doom-modeline-panel (:background github-dark-blue-ll :box nil :bold nil))
                      (doom-modeline-evil-visual-state (:foreground github-dark-purple))
                      (doom-modeline-evil-insert-state (:foreground github-dark-green-d))
                      (doom-modeline-evil-normal-state (:foreground github-dark-blue-ll))
                      (doom-modeline-warning (:foreground github-dark-red :weight 'bold))

                      (evil-ex-substitute-replacement (:foreground github-dark-red :underline t))

                      (company-tooltip (:foreground github-dark-fg))
                      (company-tooltip-annotation (:foreground github-dark-gray-d))
                      (company-tooltip-selection (:background github-dark-yellow-lll :foreground github-dark-fg))
                      (company-tooltip-search (:background github-dark-yellow-lll :foreground github-dark-fg))
                      (company-tooltip-search-selection (:background github-dark-yellow-lll :foreground github-dark-fg))
                      ;; (company-tooltip-mouse (:background github-dark-yellow-lll :foreground github-dark-fg))
                      (company-tooltip-mouse (:foreground github-dark-fg))
                      (company-tooltip-common (:foreground "#c9d1d9"))
                      (company-echo-common (:foreground github-dark-gray-llll))
                      (company-tooltip-scrollbar-thumb (:background github-dark-yellow))
                      (company-tooltip-scrollbar-track (:background github-dark-yellow-l))

                      (header-line (:background github-dark-bg :foreground github-dark-fg :bold nil
                                    :box (:line-width 1 :color github-dark-gray-lll)))
                      (mode-line-highlight (:background github-dark-bg :bold nil
                                            :box (:line-width 1 :color github-dark-gray-ll)))

                      (window-divider (:foreground github-dark-gray-lll))
                      (vertical-border (:foreground github-dark-gray-lll))
                      (mode-line (:background github-dark-bg :foreground github-dark-fg :bold nil
                                  :box (:line-width 1 :color github-dark-gray-lll)))
                      (mode-line-inactive (:background github-dark-bg :foreground github-dark-gray-l :bold nil
                                           :box (:line-width 1 :color github-dark-gray-lll)))
                      ;; (mode-line-buffer-id (:background 'unspecified :foreground "pink" :bold nil))
                                        ; (mode-line-inactive  (:background github-dark-bg :foreground github-dark-fg :bold nil
                      ;;                       :box (:line-width 2 :color github-dark-bg-hl)))
                      ;; (mode-line-buffer-id (:background 'unspecified :foreground github-dark-fg :bold nil))
                      ;; (mode-line-highlight (:background github-dark-blue-l :box nil :bold nil))
                      ;; (mode-line-emphasis  (:foreground github-dark-bg-hl))
                      ;;
                      (git-gutter:added (:foreground github-dark-green :weight 'bold))
                      (git-gutter:deleted (:foreground github-dark-red :weight 'bold))
                      (git-gutter:modified (:foreground github-dark-yellow :weight 'bold))

                      (minibuffer-prompt  (:inherit 'font-lock-builtin-face))

                      (magit-branch-remote (:inherit 'font-lock-keyword-face))
                      (magit-branch-local (:inherit 'font-lock-builtin-face))
                      (magit-section-heading (:inherit 'font-lock-type-face))
                      (magit-section-highlight (:inherit 'highlight))
                      (magit-hash (:inherit 'font-lock-comment-face))
                      (magit-refname (:inherit 'font-lock-comment-face))
                      (magit-tag (:inherit 'warning))
                      (magit-diff-hunk-heading-highlight (:background github-dark-gray-lll))
                      (magit-diff-hunk-heading (:background github-dark-gray-lll))
                      (magit-log-author (:inherit 'font-lock-number-face))
                      (magit-log-date (:inherit 'font-lock-comment-face))
                      (magit-log-graph (:inherit 'font-lock-string-face))
                      (magit-process-ng (:inherit 'error))
                      (magit-proccess-ok (:inherit 'success))

                      (nerd-icons-red (:foreground github-dark-red))
                      (nerd-icons-dred (:foreground github-dark-red-l))

                      (font-lock-doc-face (:foreground github-dark-gray-d)) ;; :slant 'italic))
                      (font-lock-builtin-face (:foreground github-dark-keyword-constant))
                      (font-lock-constant-face (:foreground github-dark-keyword-constant))
                      (font-lock-comment-face (:foreground github-dark-gray-l));; :slant 'italic))
                      (font-lock-function-name-face (:foreground github-dark-purple))
                      (font-lock-function-call-face (:foreground github-dark-purple))
                      (font-lock-keyword-face (:foreground github-dark-keyword))
                      (font-lock-number-face (:foreground github-dark-blue))
                      (font-lock-string-face (:foreground github-dark-blue-d))
                      (font-lock-variable-name-face (:foreground github-dark-fg))
                      (font-lock-preprocessor-face (:foreground github-dark-blue))
                      (font-lock-type-face (:foreground github-dark-orange))

                      (show-paren-match (:background github-dark-gray-ll))

                      ;; tree-sitter
                      (tree-sitter-hl-face:attribute (:inherit 'font-lock-preprocessor-face))
                      (tree-sitter-hl-face:comment (:inherit 'font-lock-comment-face))
                      (tree-sitter-hl-face:constant (:inherit 'font-lock-constant-face))
                      (tree-sitter-hl-face:constructor (:inherit 'font-lock-type-face))
                      (tree-sitter-hl-face:function (:inherit 'font-lock-function-name-face))
                      (tree-sitter-hl-face:function.call (:inherit 'font-lock-function-call-face))
                      (tree-sitter-hl-face:function.macro (:inherit 'font-lock-function-call-face))
                      (tree-sitter-hl-face:keyword (:inherit 'font-lock-keyword-face))
                      (tree-sitter-hl-face:method.call (:inherit 'font-lock-function-call-face))
                      (tree-sitter-hl-face:operator (:foreground github-dark-blue))
                      (tree-sitter-hl-face:string (:inherit 'font-lock-string-face))
                      (tree-sitter-hl-face:type (:inherit 'font-lock-type-face))
                      ;; (tree-sitter-hl-face:type.argument (:foreground github-dark-type))
                      (tree-sitter-hl-face:variable (:inherit 'default))
                      (tree-sitter-hl-face:variable.parameter (:foreground github-dark-coral))
                      )

                     (custom-theme-set-faces 'github-dark
                                             `(ansi-color-names-vector [,github-dark-bg])))

;; (and load-file-name
;;      (boundp 'custom-theme-load-path)
;;      (add-to-list 'custom-theme-load-path
;;                   (file-name-as-directory
;;                    (file-name-directory load-file-name))))

(provide-theme 'github-dark)
;;; github-dark.el ends here
