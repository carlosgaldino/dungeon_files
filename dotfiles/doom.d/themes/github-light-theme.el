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
                      ;; (github-light-bg-hl "#f4f4f4")
                      (github-light-bg-hl "#eaeef2")
                      (github-light-bg-paren "#474747")
                      (github-light-fg "#1f2328")
                      (github-light-gray-l "#afb8c1")
                      (github-light-gray-ll "#d0d7de")
                      (github-light-gray-lll "#eaeef2")
                      (github-light-gray-d "#6e7781")
                      (github-light-orange "#bc4c00")
                      (github-light-coral "#ec6547")
                      (github-light-fn "#6639ba")
                      (github-light-keyword "#cf222e")
                      (github-light-keyword-constant "#0550ae")
                      ;; (github-light-red "#f85149")
                      (github-light-red "#fa4549")
                      (github-light-blue-d "#0a3069")
                      (github-light-blue "#0550ae")
                      (github-light-blue-l "#80ccff")
                      (github-light-green "#6fdd8b")
                      (github-light-red-ll "#ffaba8")
                      (github-light-blue-ll "#ddf4ff"))

                     (
                      (cursor (:background github-dark-bg))
                      (default (:foreground github-light-fg :background github-light-bg))
                      (lazy-highlight (:background github-light-blue-ll))
                      (highlight (:background github-light-bg-hl))
                      (line-number (:foreground github-light-gray-ll))
                      (lsp-face-highlight-textual (:background github-light-gray-ll))
                      (lsp-face-highlight-read (:background github-light-gray-ll))
                      (error (:foreground github-light-red)) ;; :background "#e3d2d2"))
                      (region (:background github-light-bg-hl))
                      (isearch (:background github-light-blue-l))
                      (warning (:foreground github-light-coral))

                      ;; (mode-line           (:background github-light-bg :foreground github-light-fg :bold nil
                      ;;                       :box (:line-width 2 :color github-light-bg-hl)))
                      ;; (mode-line-inactive  (:background github-light-bg :foreground github-light-fg :bold nil
                      ;;                       :box (:line-width 2 :color github-light-bg-hl)))
                      ;; (mode-line-buffer-id (:background 'unspecified :foreground github-light-fg :bold nil))
                      ;; (mode-line-highlight (:foreground github-light-bg-hl :box nil :bold nil))
                      ;; (mode-line-emphasis  (:foreground github-light-bg-hl))
                      ;;
                      (git-gutter:added (:foreground github-light-green :weight 'bold))
                      (git-gutter:deleted (:foreground github-light-red :weight 'bold))
                      (git-gutter:modified (:foreground github-light-red-ll :weight 'bold))

                      (magit-branch-remote (:inherit 'font-lock-keyword-face))
                      (magit-branch-local (:inherit 'font-lock-builtin-face))
                      (magit-section-heading (:foreground github-light-orange))
                      (magit-section-highlight (:background github-light-bg-hl))
                      (magit-hash (:foreground github-light-gray-l))
                      (magit-refname (:foreground github-light-gray-l))
                      (magit-tag (:foreground github-light-coral))

                      (font-lock-doc-face (:foreground github-light-gray-d)) ;; :slant 'italic))
                      (font-lock-builtin-face (:foreground github-light-keyword-constant))
                      (font-lock-constant-face (:foreground github-light-keyword-constant))
                      (font-lock-comment-face (:foreground github-light-gray-l));; :slant 'italic))
                      (font-lock-function-name-face (:foreground github-light-fn))
                      (font-lock-function-call-face (:foreground github-light-fn))
                      (font-lock-keyword-face (:foreground github-light-keyword))
                      (font-lock-number-face (:foreground github-light-blue))
                      (font-lock-string-face (:foreground github-light-blue-d))
                      (font-lock-variable-name-face (:foreground github-light-fg))
                      (font-lock-preprocessor-face (:foreground github-light-blue))
                      (font-lock-type-face (:foreground github-light-orange))

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
                      (tree-sitter-hl-face:variable (:foreground github-light-fg))
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
