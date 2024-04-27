;;; github-dark.el --- A dark theme inspired by GitHub's color scheme
;;; Commentary:
;;; Code:

(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(autothemer-deftheme github-dark "A dark theme inspired by GitHub's color scheme"
                     ((((class color) (min-colors #xFFFFFF)))

                      (github-dark-bg "#0a0a0a")
                      (github-dark-bg-hl "#1a1a1a")
                      (github-dark-bg-paren "#474747")
                      (github-dark-fg "#e6edf3")
                      (github-dark-comment "#53585e")
                      (github-dark-doc-comment "#868a8e")
                      (github-dark-preprocessor "#999999")
                      (github-dark-type "#f0883e")
                      (github-dark-line-number "#303337")
                      (github-dark-type-arg "#ffa657")
                      (github-dark-fn "#d2a8ff")
                      (github-dark-keyword "#ff7b72")
                      (github-dark-keyword-constant "#79c0ff")
                      (github-dark-error "#f85149")
                      (github-dark-operator "#a5d6ff"))

                     (
                      (default (:foreground github-dark-fg :background github-dark-bg))
                      (highlight (:background github-dark-bg-hl))
                      (line-number (:foreground github-dark-line-number))
                      (lsp-face-highlight-textual (:background github-dark-bg-hl))
                      (error (:foreground github-dark-error))
                      (region (:background github-dark-bg-hl))

                      ;; (mode-line           (:background github-dark-bg :foreground github-dark-fg :bold nil
                      ;;                       :box (:line-width 2 :color github-dark-bg-hl)))
                      ;; (mode-line-inactive  (:background github-dark-bg :foreground github-dark-fg :bold nil
                      ;;                       :box (:line-width 2 :color github-dark-bg-hl)))
                      ;; (mode-line-buffer-id (:background 'unspecified :foreground github-dark-fg :bold nil))
                      ;; (mode-line-highlight (:foreground github-dark-bg-hl :box nil :bold nil))
                      ;; (mode-line-emphasis  (:foreground github-dark-bg-hl))

                      (magit-branch-remote (:inherit 'font-lock-keyword-face))
                      (magit-branch-local (:inherit 'font-lock-builtin-face))
                      (magit-section-heading (:foreground github-dark-type))
                      (magit-section-highlight (:background github-dark-bg-hl))
                      (magit-hash (:foreground github-dark-comment))
                      (magit-refname (:foreground github-dark-comment))
                      (magit-tag (:foreground github-dark-type-arg))

                      (font-lock-doc-face (:foreground github-dark-doc-comment)) ;; :slant 'italic))
                      (font-lock-builtin-face (:foreground github-dark-keyword-constant))
                      (font-lock-constant-face (:foreground github-dark-keyword-constant))
                      (font-lock-comment-face (:foreground github-dark-comment));; :slant 'italic))
                      (font-lock-function-name-face (:foreground github-dark-fn))
                      (font-lock-keyword-face (:foreground github-dark-keyword))
                      (font-lock-number-face (:foreground github-dark-operator))
                      (font-lock-string-face (:foreground github-dark-operator))
                      (font-lock-variable-name-face (:foreground github-dark-fg))
                      (font-lock-preprocessor-face (:foreground github-dark-preprocessor))
                      (font-lock-type-face (:foreground github-dark-fg))

                      (show-paren-match (:background github-dark-bg-paren))

                      ;; tree-sitter
                      (tree-sitter-hl-face:attribute (:inherit 'font-lock-preprocessor-face))
                      (tree-sitter-hl-face:comment (:inherit 'font-lock-comment-face))
                      (tree-sitter-hl-face:constant (:inherit 'font-lock-constant-face))
                      (tree-sitter-hl-face:constructor (:foreground github-dark-type))
                      (tree-sitter-hl-face:function (:inherit 'font-lock-function-name-face))
                      (tree-sitter-hl-face:function.call (:foreground github-dark-fn))
                      (tree-sitter-hl-face:function.macro (:foreground github-dark-fn))
                      (tree-sitter-hl-face:keyword (:inherit 'font-lock-keyword-face))
                      (tree-sitter-hl-face:method.call (:foreground github-dark-fn))
                      (tree-sitter-hl-face:operator (:foreground github-dark-operator))
                      (tree-sitter-hl-face:string (:inherit 'font-lock-string-face))
                      (tree-sitter-hl-face:type (:inherit 'font-lock-type-face))
                      (tree-sitter-hl-face:type.argument (:foreground github-dark-type))
                      (tree-sitter-hl-face:variable (:foreground github-dark-fg))
                      (tree-sitter-hl-face:variable.parameter (:foreground github-dark-type-arg))
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
