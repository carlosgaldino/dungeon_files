;;; github-light.el --- A light theme inspired by GitHub's color scheme
;;; Commentary:
;;; Code:

(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(autothemer-deftheme github-light "A light theme inspired by GitHub's color scheme"
                     ((((class color) (min-colors #xFFFFFF)))

                      (github-dark-bg "#0a0a0a")
                      (github-light-bg "#fafafa")
                      (github-light-bg-hl "#eaeef2")
                      (github-light-bg-paren "#474747")
                      (github-light-fg "#1f2328")
                      (github-light-gray-l "#afb8c1")
                      (github-light-gray-ll "#d0d7de")
                      (github-light-gray-lll "#eaeef2")
                      (github-light-gray-llll "#f6f8fa")
                      (github-light-gray-d "#6e7781")
                      (github-light-orange "#bc4c00")
                      (github-light-coral "#ec6547")
                      (github-light-purple "#6639ba")
                      (github-light-keyword "#cf222e")
                      (github-light-keyword-constant "#0550ae")
                      ;; (github-light-red "#f85149")
                      (github-light-red "#fa4549")
                      (github-light-red-l "#ff8182")
                      (github-light-red-ll "#ffaba8")
                      (github-light-blue-d "#0a3069")
                      (github-light-blue "#0550ae")
                      (github-light-blue-l "#80ccff")
                      (github-light-green "#6fdd8b")
                      (github-light-green-d "#2da44e")
                      (github-light-yellow "#d4a72c")
                      (github-light-yellow-l "#eac54f")
                      (github-light-yellow-lll "#fff8c5")
                      (github-light-pink "#ffadda")
                      (github-light-blue-ll "#ddf4ff"))

                     (
                      (link (:foreground github-light-blue :underline t))
                      (homoglyph (:foreground github-light-yellow))
                      (cursor (:background github-dark-bg))
                      (default (:foreground github-light-fg :background github-light-bg))
                      (lazy-highlight (:background github-light-blue-ll))
                      (highlight (:background github-light-bg-hl))
                      (line-number (:foreground github-light-gray-ll))
                      (lsp-face-highlight-textual (:background github-light-yellow-lll))
                      (lsp-face-highlight-read (:background github-light-yellow-lll))
                      (lsp-headerline-breadcrumb-symbols-face (:foreground github-light-fg :weight 'bold))
                      (error (:foreground github-light-red)) ;; :background "#e3d2d2"))
                      (region (:background github-light-yellow-lll))
                      (isearch (:background github-light-blue-l))
                      (warning (:foreground github-light-coral))
                      (popup-tip-face (:background github-light-red-l :foreground github-light-fg))
                      (git-commit-summary (:foreground github-light-blue))
                      (git-commit-pseudo-header (:foreground github-light-blue))
                      (success (:foreground github-light-green-d))

                      (doom-modeline-info (:foreground github-light-green-d))
                      (doom-modeline-buffer-file (:foreground github-light-blue))
                      (doom-modeline-buffer-major-mode (:foreground github-light-blue-d))
                      (doom-modeline-buffer-modified (:foreground github-light-red :weight 'bold))
                      (doom-modeline-panel (:background github-light-blue-l :box nil :bold nil))
                      (doom-modeline-evil-visual-state (:foreground github-light-purple))
                      (doom-modeline-evil-insert-state (:foreground github-light-green-d))
                      (doom-modeline-evil-normal-state (:foreground github-light-blue))
                      (doom-modeline-warning (:foreground github-light-red :weight 'bold))

                      (evil-ex-substitute-replacement (:foreground github-light-red :underline t))

                      (company-tooltip (:foreground github-light-fg))
                      (company-tooltip-annotation (:foreground github-light-gray-d))
                      (company-tooltip-selection (:background github-light-yellow-lll :foreground github-light-fg))
                      (company-tooltip-search (:background github-light-yellow-lll :foreground github-light-fg))
                      (company-tooltip-search-selection (:background github-light-yellow-lll :foreground github-light-fg))
                      ;; (company-tooltip-mouse (:background github-light-yellow-lll :foreground github-light-fg))
                      (company-tooltip-mouse (:foreground github-light-fg))
                      (company-tooltip-common (:foreground github-light-gray-d))
                      (company-echo-common (:foreground github-light-gray-d))
                      (company-tooltip-scrollbar-thumb (:background github-light-yellow))
                      (company-tooltip-scrollbar-track (:background github-light-yellow-l))

                      (header-line (:background github-light-bg :foreground github-light-fg :bold nil
                                    :box (:line-width 1 :color github-light-gray-lll)))
                      (mode-line-highlight (:background github-light-bg :bold nil
                                            :box (:line-width 1 :color github-light-gray-ll)))

                      (window-divider (:foreground github-light-gray-lll))
                      (vertical-border (:foreground github-light-gray-lll))
                      (mode-line (:background github-light-bg :foreground github-light-fg :bold nil
                                  :box (:line-width 1 :color github-light-gray-lll)))
                      (mode-line-inactive (:background github-light-bg :foreground github-light-gray-l :bold nil
                                           :box (:line-width 1 :color github-light-gray-lll)))
                                        ; (mode-line-inactive  (:background github-light-bg :foreground github-light-fg :bold nil
                      ;;                       :box (:line-width 2 :color github-light-bg-hl)))
                      ;; (mode-line-buffer-id (:background 'unspecified :foreground github-light-fg :bold nil))
                      ;; (mode-line-highlight (:background github-light-blue-l :box nil :bold nil))
                      ;; (mode-line-emphasis  (:foreground github-light-bg-hl))
                      ;;
                      (git-gutter:added (:foreground github-light-green :weight 'bold))
                      (git-gutter:deleted (:foreground github-light-red :weight 'bold))
                      (git-gutter:modified (:foreground github-light-yellow :weight 'bold))

                      (minibuffer-prompt  (:inherit 'font-lock-builtin-face))

                      (magit-branch-remote (:inherit 'font-lock-keyword-face))
                      (magit-branch-local (:inherit 'font-lock-builtin-face))
                      (magit-section-heading (:inherit 'font-lock-type-face))
                      (magit-section-highlight (:inherit 'highlight))
                      (magit-hash (:inherit 'font-lock-comment-face))
                      (magit-refname (:inherit 'font-lock-comment-face))
                      (magit-tag (:inherit 'warning))
                      (magit-diff-hunk-heading-highlight (:background github-light-gray-lll))
                      (magit-diff-hunk-heading (:background github-light-gray-lll))
                      (magit-log-author (:inherit 'font-lock-number-face))
                      (magit-log-date (:inherit 'font-lock-comment-face))
                      (magit-log-graph (:inherit 'font-lock-string-face))
                      (magit-process-ng (:inherit 'error))
                      (magit-proccess-ok (:inherit 'success))

                      (nerd-icons-red (:foreground github-light-red))
                      (nerd-icons-lred (:foreground github-light-red-l))

                      (font-lock-doc-face (:foreground github-light-gray-d)) ;; :slant 'italic))
                      (font-lock-builtin-face (:foreground github-light-keyword-constant))
                      (font-lock-constant-face (:foreground github-light-keyword-constant))
                      (font-lock-comment-face (:foreground github-light-gray-l));; :slant 'italic))
                      (font-lock-function-name-face (:foreground github-light-purple))
                      (font-lock-function-call-face (:foreground github-light-purple))
                      (font-lock-keyword-face (:foreground github-light-keyword))
                      (font-lock-number-face (:foreground github-light-blue))
                      (font-lock-string-face (:foreground github-light-blue-d))
                      (font-lock-variable-name-face (:foreground github-light-fg))
                      (font-lock-preprocessor-face (:foreground github-light-blue))
                      (font-lock-type-face (:foreground github-light-orange))
                      (font-lock-operator-face (:foreground github-light-blue))

                      (show-paren-match (:background github-light-gray-ll))

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
                      (tree-sitter-hl-face:operator (:foreground github-light-blue))
                      (tree-sitter-hl-face:string (:inherit 'font-lock-string-face))
                      (tree-sitter-hl-face:type (:inherit 'font-lock-type-face))
                      ;; (tree-sitter-hl-face:type.argument (:foreground github-light-type))
                      (tree-sitter-hl-face:variable (:inherit 'default))
                      (tree-sitter-hl-face:variable.parameter (:foreground github-light-coral))
                      )

                     (custom-theme-set-faces 'github-light
                                             `(ansi-color-names-vector [,github-light-bg])))

;; (and load-file-name
;;      (boundp 'custom-theme-load-path)
;;      (add-to-list 'custom-theme-load-path
;;                   (file-name-as-directory
;;                    (file-name-directory load-file-name))))

(provide-theme 'github-light)
;;; github-light.el ends here
