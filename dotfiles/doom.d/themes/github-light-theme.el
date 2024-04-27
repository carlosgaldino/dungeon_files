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
                      (github-light-bg-hl "#f4f4f4")
                      (github-light-bg-paren "#474747")
                      (github-light-fg "#1f2328")
                      (github-light-comment "#959da5")
                      (github-light-doc-comment "#686d73")
                      (github-light-preprocessor "#999999")
                      (github-light-type "#a04100")
                      (github-light-line-number "#bcbfc4")
                      (github-light-type-arg "#e36209")
                      (github-light-fn "#6639ba")
                      (github-light-keyword "#cf222e")
                      (github-light-keyword-constant "#0550ae")
                      (github-light-error "#f85149")
                      (github-light-string "#0a3069")
                      (github-light-operator "#0550ae"))

                     (
                      (cursor (:background github-dark-bg))
                      (default (:foreground github-light-fg :background github-light-bg))
                      (highlight (:background github-light-bg-hl))
                      (line-number (:foreground github-light-line-number))
                      (lsp-face-highlight-textual (:background github-light-bg-hl))
                      (error (:foreground github-light-error)) ;; :background "#e3d2d2"))
                      (region (:background github-light-bg-hl))

                      ;; (mode-line           (:background github-light-bg :foreground github-light-fg :bold nil
                      ;;                       :box (:line-width 2 :color github-light-bg-hl)))
                      ;; (mode-line-inactive  (:background github-light-bg :foreground github-light-fg :bold nil
                      ;;                       :box (:line-width 2 :color github-light-bg-hl)))
                      ;; (mode-line-buffer-id (:background 'unspecified :foreground github-light-fg :bold nil))
                      ;; (mode-line-highlight (:foreground github-light-bg-hl :box nil :bold nil))
                      ;; (mode-line-emphasis  (:foreground github-light-bg-hl))

                      (magit-branch-remote (:inherit 'font-lock-keyword-face))
                      (magit-branch-local (:inherit 'font-lock-builtin-face))
                      (magit-section-heading (:foreground github-light-type))
                      (magit-section-highlight (:background github-light-bg-hl))
                      (magit-hash (:foreground github-light-comment))
                      (magit-refname (:foreground github-light-comment))
                      (magit-tag (:foreground github-light-type-arg))

                      (font-lock-doc-face (:foreground github-light-doc-comment)) ;; :slant 'italic))
                      (font-lock-builtin-face (:foreground github-light-keyword-constant))
                      (font-lock-constant-face (:foreground github-light-keyword-constant))
                      (font-lock-comment-face (:foreground github-light-comment));; :slant 'italic))
                      (font-lock-function-name-face (:foreground github-light-fn))
                      (font-lock-function-call-face (:foreground github-light-fn))
                      (font-lock-keyword-face (:foreground github-light-keyword))
                      (font-lock-number-face (:foreground github-light-operator))
                      (font-lock-string-face (:foreground github-light-string))
                      (font-lock-variable-name-face (:foreground github-light-fg))
                      (font-lock-preprocessor-face (:foreground github-light-preprocessor))
                      (font-lock-type-face (:foreground github-light-fg))

                      (show-paren-match (:background github-light-bg-paren))

                      ;; tree-sitter
                      (tree-sitter-hl-face:attribute (:inherit 'font-lock-preprocessor-face))
                      (tree-sitter-hl-face:comment (:inherit 'font-lock-comment-face))
                      (tree-sitter-hl-face:constant (:inherit 'font-lock-constant-face))
                      (tree-sitter-hl-face:constructor (:foreground github-light-type))
                      (tree-sitter-hl-face:function (:inherit 'font-lock-function-name-face))
                      (tree-sitter-hl-face:function.call (:inherit 'font-lock-function-call-face))
                      (tree-sitter-hl-face:function.macro (:inherit 'font-lock-function-call-face))
                      (tree-sitter-hl-face:keyword (:inherit 'font-lock-keyword-face))
                      (tree-sitter-hl-face:method.call (:inherit 'font-lock-function-call-face))
                      (tree-sitter-hl-face:operator (:foreground github-light-operator))
                      (tree-sitter-hl-face:string (:inherit 'font-lock-string-face))
                      (tree-sitter-hl-face:type (:inherit 'font-lock-type-face))
                      (tree-sitter-hl-face:type.argument (:foreground github-light-type))
                      (tree-sitter-hl-face:variable (:foreground github-light-fg))
                      (tree-sitter-hl-face:variable.parameter (:foreground github-light-type-arg))
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
