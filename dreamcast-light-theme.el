;;; dreamcast-light-theme.el --- A light theme inspired by the Sega Dreamcast -*- lexical-binding: t; -*-

;; Copyright (C) 2025 Jack Killilea

;; Author: Jack Killilea <xkillilea@gmail.com>
;; URL: https://github.com/xjackk/dreamcast-theme
;; Version: 1.0.0
;; Package-Requires: ((emacs "24.1"))
;; Keywords: faces, themes

;; This file is NOT part of GNU Emacs.

;;; Commentary:

;; A light theme inspired by the iconic Sega Dreamcast console,
;; featuring the vibrant orange and electric blue from the Dreamcast
;; branding, capturing the console's clean, white shell design.

;;; Code:

(deftheme dreamcast-light
  "A light theme inspired by the Sega Dreamcast.")

(let ((class '((class color) (min-colors 89)))
      ;; Light Mode Palette
      ;; Background & UI
      (bg                "#F8FAFB")  ; Clean white with slight blue tint
      (bg-alt            "#E8EEF2")  ; Light gray-blue
      (bg-highlight      "#FFE8DB")  ; Warm orange-tinted highlight - POPS more!
      (border            "#CBD5E0")  ; Borders

      ;; Foreground & Text
      (fg                "#1A2332")  ; Dark blue-gray
      (fg-alt            "#2D3748")  ; Slightly lighter for less emphasis
      (comment           "#7590A8")  ; Lighter blue-gray - better contrast with bg-alt!

      ;; Syntax highlighting
      (dreamcast-orange  "#DD5500")  ; Slightly darker orange for contrast
      (dreamcast-blue    "#0077CC")  ; Deeper blue (keywords), still vibrant
      (cyan              "#0099CC")  ; Medium cyan (functions)
      (navy-blue         "#0052CC")  ; Deep blue (types/variables) - from Jekyll theme!
      (deep-orange       "#E65100")  ; Constants

      ;; Semantic colors - Dreamcast-aligned!
      (error             "#DC143C")  ; Crimson red
      (warning           "#FF8533")  ; Lighter Dreamcast orange
      (success           "#2AA198")  ; Teal (blue-green) fits Dreamcast palette
      (info              "#00A0E9"))  ; Dreamcast electric blue!

  (custom-theme-set-faces
   'dreamcast-light

   ;; Base faces
   `(default ((,class (:background ,bg :foreground ,fg))))
   `(cursor ((,class (:background ,dreamcast-orange))))
   `(region ((,class (:background ,bg-highlight))))
   `(highlight ((,class (:background ,bg-highlight))))
   `(hl-line ((,class (:background ,bg-alt))))
   `(fringe ((,class (:background ,bg :foreground ,comment))))
   `(vertical-border ((,class (:foreground ,border))))
   `(window-divider ((,class (:foreground ,border))))
   `(window-divider-first-pixel ((,class (:foreground ,border))))
   `(window-divider-last-pixel ((,class (:foreground ,border))))

   ;; Font lock (syntax highlighting)
   `(font-lock-builtin-face ((,class (:foreground ,dreamcast-blue))))
   `(font-lock-comment-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment))))
   `(font-lock-constant-face ((,class (:foreground ,deep-orange))))
   `(font-lock-doc-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,deep-orange :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,dreamcast-blue :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,dreamcast-orange))))
   `(font-lock-type-face ((,class (:foreground ,navy-blue))))
   `(font-lock-variable-name-face ((,class (:foreground ,cyan))))
   `(font-lock-warning-face ((,class (:foreground ,warning :weight bold))))

   ;; Mode line
   `(mode-line ((,class (:background ,bg-alt :foreground ,fg :box (:line-width 3 :color ,bg-alt)))))
   `(mode-line-inactive ((,class (:background ,bg :foreground ,comment :box (:line-width 3 :color ,bg)))))
   `(mode-line-emphasis ((,class (:foreground ,dreamcast-orange :weight bold))))
   `(mode-line-highlight ((,class (:foreground ,dreamcast-blue))))

   ;; Line numbers
   `(line-number ((,class (:foreground ,comment :background ,bg))))
   `(line-number-current-line ((,class (:foreground ,dreamcast-orange :background ,bg-alt :weight bold))))

   ;; Search - warm highlights that POP
   `(isearch ((,class (:background ,dreamcast-orange :foreground ,bg :weight bold))))
   `(lazy-highlight ((,class (:background ,bg-highlight :foreground ,navy-blue :weight bold))))

   ;; Links
   `(link ((,class (:foreground ,dreamcast-blue :underline t))))
   `(link-visited ((,class (:foreground ,navy-blue :underline t))))

   ;; Minibuffer
   `(minibuffer-prompt ((,class (:foreground ,dreamcast-blue :weight bold))))

   ;; Parentheses matching
   `(show-paren-match ((,class (:background ,dreamcast-blue :foreground ,bg :weight bold))))
   `(show-paren-mismatch ((,class (:background ,error :foreground ,bg :weight bold))))

   ;; Success/Warning/Error
   `(success ((,class (:foreground ,success :weight bold))))
   `(warning ((,class (:foreground ,warning :weight bold))))
   `(error ((,class (:foreground ,error :weight bold))))

   ;; Doom Emacs specific
   `(doom-modeline-bar ((,class (:background ,dreamcast-orange))))
   `(doom-modeline-buffer-file ((,class (:foreground ,fg :weight bold))))
   `(doom-modeline-buffer-modified ((,class (:foreground ,dreamcast-orange :weight bold))))
   `(doom-modeline-buffer-path ((,class (:foreground ,navy-blue))))
   `(doom-modeline-project-dir ((,class (:foreground ,dreamcast-blue :weight bold))))

   ;; Company (autocomplete)
   `(company-tooltip ((,class (:background ,bg-alt :foreground ,fg))))
   `(company-tooltip-selection ((,class (:background ,bg-highlight :foreground ,dreamcast-orange))))
   `(company-tooltip-common ((,class (:foreground ,dreamcast-blue :weight bold))))
   `(company-tooltip-annotation ((,class (:foreground ,fg-alt))))
   `(company-scrollbar-bg ((,class (:background ,bg-alt))))
   `(company-scrollbar-fg ((,class (:background ,dreamcast-orange))))

   ;; Ivy/Counsel
   `(ivy-current-match ((,class (:background ,bg-highlight :foreground ,dreamcast-orange :weight bold))))
   `(ivy-minibuffer-match-face-1 ((,class (:foreground ,fg))))
   `(ivy-minibuffer-match-face-2 ((,class (:foreground ,dreamcast-blue :weight bold))))
   `(ivy-minibuffer-match-face-3 ((,class (:foreground ,cyan :weight bold))))
   `(ivy-minibuffer-match-face-4 ((,class (:foreground ,dreamcast-orange :weight bold))))

   ;; Org mode
   `(org-level-1 ((,class (:foreground ,dreamcast-orange :weight bold :height 1.3))))
   `(org-level-2 ((,class (:foreground ,dreamcast-blue :weight bold :height 1.2))))
   `(org-level-3 ((,class (:foreground ,cyan :weight bold :height 1.1))))
   `(org-level-4 ((,class (:foreground ,navy-blue :weight bold))))
   `(org-level-5 ((,class (:foreground ,deep-orange :weight bold))))
   `(org-level-6 ((,class (:foreground ,dreamcast-blue))))
   `(org-level-7 ((,class (:foreground ,cyan))))
   `(org-level-8 ((,class (:foreground ,navy-blue))))
   `(org-link ((,class (:foreground ,dreamcast-blue :underline t))))
   `(org-code ((,class (:foreground ,dreamcast-orange))))
   `(org-verbatim ((,class (:foreground ,cyan))))
   `(org-block ((,class (:background ,bg-alt :foreground ,fg))))
   `(org-block-begin-line ((,class (:foreground ,comment :slant italic))))
   `(org-block-end-line ((,class (:foreground ,comment :slant italic))))
   `(org-document-title ((,class (:foreground ,dreamcast-orange :weight bold :height 1.5))))
   `(org-document-info ((,class (:foreground ,dreamcast-blue))))
   `(org-document-info-keyword ((,class (:foreground ,fg-alt))))
   `(org-meta-line ((,class (:foreground ,fg-alt :slant italic))))
   `(org-special-keyword ((,class (:foreground ,fg-alt))))
   `(org-drawer ((,class (:foreground ,fg-alt))))
   `(org-date ((,class (:foreground ,fg-alt :underline t))))
   `(org-todo ((,class (:foreground ,warning :weight bold))))
   `(org-done ((,class (:foreground ,success :weight bold))))

   ;; Markdown
   `(markdown-header-face-1 ((,class (:foreground ,dreamcast-orange :weight bold :height 1.3))))
   `(markdown-header-face-2 ((,class (:foreground ,dreamcast-blue :weight bold :height 1.2))))
   `(markdown-header-face-3 ((,class (:foreground ,cyan :weight bold :height 1.1))))
   `(markdown-header-face-4 ((,class (:foreground ,navy-blue :weight bold))))
   `(markdown-code-face ((,class (:foreground ,dreamcast-orange :background ,bg-alt))))
   `(markdown-inline-code-face ((,class (:foreground ,cyan))))
   `(markdown-link-face ((,class (:foreground ,dreamcast-blue :underline t))))

   ;; Git gutter
   `(git-gutter:added ((,class (:foreground ,success :weight bold))))
   `(git-gutter:deleted ((,class (:foreground ,error :weight bold))))
   `(git-gutter:modified ((,class (:foreground ,dreamcast-blue :weight bold))))

   ;; Diff
   `(diff-added ((,class (:foreground ,success :background ,bg-alt))))
   `(diff-removed ((,class (:foreground ,error :background ,bg-alt))))
   `(diff-changed ((,class (:foreground ,dreamcast-blue :background ,bg-alt))))
   `(diff-header ((,class (:foreground ,dreamcast-orange :weight bold))))
   `(diff-file-header ((,class (:foreground ,cyan :weight bold))))

   ;; Magit
   `(magit-section-heading ((,class (:foreground ,dreamcast-orange :weight bold))))
   `(magit-branch-local ((,class (:foreground ,dreamcast-blue :weight bold))))
   `(magit-branch-remote ((,class (:foreground ,cyan :weight bold))))
   `(magit-hash ((,class (:foreground ,comment))))
   `(magit-diff-added ((,class (:foreground ,success :background ,bg-alt))))
   `(magit-diff-removed ((,class (:foreground ,error :background ,bg-alt))))
   `(magit-diff-context ((,class (:foreground ,fg :background ,bg))))

   ;; Treemacs
   `(treemacs-root-face ((,class (:foreground ,dreamcast-orange :weight bold :height 1.2))))
   `(treemacs-directory-face ((,class (:foreground ,dreamcast-blue))))
   `(treemacs-file-face ((,class (:foreground ,fg))))
   `(treemacs-git-modified-face ((,class (:foreground ,dreamcast-blue))))
   `(treemacs-git-added-face ((,class (:foreground ,success))))
   `(treemacs-git-untracked-face ((,class (:foreground ,comment))))

   ;; Whitespace mode
   `(whitespace-space ((,class (:foreground ,border :background nil))))
   `(whitespace-tab ((,class (:foreground ,border :background nil))))
   `(whitespace-newline ((,class (:foreground ,border :background nil))))
   `(whitespace-trailing ((,class (:foreground ,comment :background ,bg-alt))))
   `(whitespace-line ((,class (:foreground nil :background ,bg-alt))))
   `(whitespace-indentation ((,class (:foreground ,border :background nil))))
   `(whitespace-empty ((,class (:foreground nil :background nil))))
   `(trailing-whitespace ((,class (:background ,bg-alt))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,deep-orange :weight bold :background unspecified :box nil))))  ; Darker dreamcast orange for folders, NO BOXES
   `(dired-symlink ((,class (:foreground ,cyan :background unspecified))))
   `(dired-flagged ((,class (:foreground ,error :weight bold :background unspecified))))
   `(dired-marked ((,class (:foreground ,dreamcast-orange :weight bold :background unspecified))))
   `(dired-header ((,class (:foreground ,dreamcast-orange :weight bold :height 1.1 :background unspecified))))
   `(dired-ignored ((,class (:foreground ,comment))))
   `(dired-warning ((,class (:foreground ,warning))))
   `(dired-perm-write ((,class (:foreground ,success))))
   ;; Plain permissions
   `(dired-special ((,class (:foreground ,dreamcast-blue))))
   `(dired-set-id ((,class (:foreground ,dreamcast-orange))))
   `(dired-broken-symlink ((,class (:foreground ,error))))

   ;; All-the-icons dired (removes icon backgrounds if installed)
   `(all-the-icons-dired-dir-face ((,class (:foreground ,deep-orange :background unspecified))))

   ;; Dired+ (if installed) - filenames and extensions same color
   `(diredp-dir-heading ((,class (:foreground ,dreamcast-orange :weight bold :background unspecified))))
   `(diredp-dir-name ((,class (:foreground ,deep-orange :weight bold :background unspecified :box nil :underline nil))))  ; Darker orange for folders, explicitly no box/bg
   `(diredp-file-name ((,class (:foreground ,fg :inherit nil))))  ; Same as file suffix, no inheritance
   `(diredp-file-suffix ((,class (:foreground ,fg :inherit nil))))  ; Same color as filename, no inheritance
   `(diredp-symlink ((,class (:foreground ,cyan))))
   `(diredp-date-time ((,class (:foreground ,fg-alt))))
   `(diredp-number ((,class (:foreground ,fg-alt))))
   `(diredp-flag-mark ((,class (:foreground ,dreamcast-orange :weight bold))))
   `(diredp-read-priv ((,class (:foreground ,fg))))
   `(diredp-write-priv ((,class (:foreground ,fg))))
   `(diredp-exec-priv ((,class (:foreground ,fg))))
   `(diredp-no-priv ((,class (:foreground ,fg))))
   `(diredp-dir-priv ((,class (:foreground ,fg))))
   `(diredp-link-priv ((,class (:foreground ,fg))))
   `(diredp-rare-priv ((,class (:foreground ,fg))))
   `(diredp-other-priv ((,class (:foreground ,fg))))
   `(diredp-autofile-name ((,class (:foreground ,fg))))
   `(diredp-compressed-file-suffix ((,class (:foreground ,navy-blue))))
   `(diredp-ignored-file-name ((,class (:foreground ,comment))))

   ;; Enhanced Magit faces
   `(magit-section-highlight ((,class (:background ,bg-alt))))
   `(magit-diff-hunk-heading ((,class (:background ,bg-alt :foreground ,fg :weight bold))))
   `(magit-diff-hunk-heading-highlight ((,class (:background ,bg-highlight :foreground ,dreamcast-orange :weight bold))))
   `(magit-diff-context-highlight ((,class (:background ,bg-alt :foreground ,fg))))
   `(magit-diff-added-highlight ((,class (:background "#E8F5E9" :foreground ,success :weight bold))))
   `(magit-diff-removed-highlight ((,class (:background "#FFEBEE" :foreground ,error :weight bold))))
   `(magit-diffstat-added ((,class (:foreground ,success :weight bold))))
   `(magit-diffstat-removed ((,class (:foreground ,error :weight bold))))
   `(magit-section-heading-selection ((,class (:foreground ,dreamcast-orange :weight bold))))
   `(magit-tag ((,class (:foreground ,deep-orange :weight bold))))
   `(magit-filename ((,class (:foreground ,fg :weight bold))))
   `(magit-dimmed ((,class (:foreground ,fg-alt))))
   `(magit-signature-good ((,class (:foreground ,success))))
   `(magit-signature-bad ((,class (:foreground ,error))))
   `(magit-signature-untrusted ((,class (:foreground ,fg-alt))))
   `(magit-log-author ((,class (:foreground ,fg-alt))))
   `(magit-log-date ((,class (:foreground ,fg-alt))))

   ;; Vertico
   `(vertico-current ((,class (:background ,bg-highlight :foreground ,dreamcast-orange :weight bold))))
   `(vertico-group-title ((,class (:foreground ,dreamcast-blue :weight bold))))
   `(vertico-group-separator ((,class (:foreground ,border))))

   ;; Corfu (inline completion)
   `(corfu-default ((,class (:background ,bg-alt :foreground ,fg))))
   `(corfu-current ((,class (:background ,bg-highlight :foreground ,dreamcast-orange :weight bold))))
   `(corfu-border ((,class (:background ,border))))
   `(corfu-annotations ((,class (:foreground ,fg-alt))))

   ;; Which-key
   `(which-key-key-face ((,class (:foreground ,dreamcast-blue :weight bold))))
   `(which-key-separator-face ((,class (:foreground ,comment))))
   `(which-key-note-face ((,class (:foreground ,comment))))
   `(which-key-command-description-face ((,class (:foreground ,fg))))
   `(which-key-local-map-description-face ((,class (:foreground ,dreamcast-orange))))
   `(which-key-group-description-face ((,class (:foreground ,cyan))))
   `(which-key-highlighted-command-face ((,class (:foreground ,dreamcast-orange :weight bold))))

   ;; Rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,dreamcast-blue))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,dreamcast-orange))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,cyan))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,navy-blue))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,deep-orange))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,dreamcast-blue))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,cyan))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,dreamcast-orange))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,navy-blue))))
   `(rainbow-delimiters-mismatched-face ((,class (:foreground ,error :weight bold))))
   `(rainbow-delimiters-unmatched-face ((,class (:foreground ,error :weight bold))))

   ;; Language-specific faces

   ;; Ruby - Instance variables, symbols, etc.
   `(ruby-constant-face ((,class (:foreground ,deep-orange :weight bold))))
   `(enh-ruby-op-face ((,class (:foreground ,fg))))
   `(enh-ruby-string-delimiter-face ((,class (:foreground ,dreamcast-orange))))
   `(enh-ruby-regexp-delimiter-face ((,class (:foreground ,cyan))))

   ;; Python
   `(python-builtins-face ((,class (:foreground ,dreamcast-blue))))
   `(python-decorators-face ((,class (:foreground ,deep-orange :slant italic))))

   ;; Go
   `(go-function-call-face ((,class (:foreground ,cyan))))
   `(go-package-name-face ((,class (:foreground ,navy-blue))))

   ;; TypeScript/JavaScript
   `(typescript-jsdoc-tag ((,class (:foreground ,comment :slant italic))))
   `(typescript-jsdoc-type ((,class (:foreground ,navy-blue :slant italic))))
   `(typescript-jsdoc-value ((,class (:foreground ,comment :slant italic))))
   `(js2-function-call ((,class (:foreground ,cyan))))
   `(js2-object-property ((,class (:foreground ,navy-blue))))
   `(js2-external-variable ((,class (:foreground ,deep-orange))))
   `(js2-jsdoc-tag ((,class (:foreground ,comment :slant italic))))
   `(js2-jsdoc-type ((,class (:foreground ,navy-blue :slant italic))))
   `(js2-jsdoc-value ((,class (:foreground ,comment :slant italic))))

   ;; Flycheck/Flymake (error checking)
   `(flycheck-error ((,class (:underline (:style wave :color ,error)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,warning)))))
   `(flycheck-info ((,class (:underline (:style wave :color ,info)))))
   `(flymake-error ((,class (:underline (:style wave :color ,error)))))
   `(flymake-warning ((,class (:underline (:style wave :color ,warning)))))
   `(flymake-note ((,class (:underline (:style wave :color ,info)))))

   ;; Helm (if used instead of ivy/vertico)
   `(helm-selection ((,class (:background ,bg-highlight :foreground ,dreamcast-orange :weight bold))))
   `(helm-match ((,class (:foreground ,dreamcast-blue :weight bold))))
   `(helm-source-header ((,class (:foreground ,dreamcast-orange :weight bold :height 1.1))))
   `(helm-candidate-number ((,class (:foreground ,deep-orange))))
   `(helm-buffer-directory ((,class (:foreground ,dreamcast-blue :weight bold))))
   `(helm-buffer-file ((,class (:foreground ,fg))))
   `(helm-ff-directory ((,class (:foreground ,dreamcast-blue :weight bold))))
   `(helm-ff-file ((,class (:foreground ,fg))))
   `(helm-ff-executable ((,class (:foreground ,success))))
   `(helm-ff-symlink ((,class (:foreground ,cyan :slant italic))))

   ;; Selectrum
   `(selectrum-current-candidate ((,class (:background ,bg-highlight :foreground ,dreamcast-orange :weight bold))))
   `(selectrum-primary-highlight ((,class (:foreground ,dreamcast-blue :weight bold))))
   `(selectrum-secondary-highlight ((,class (:foreground ,cyan))))

   ;; Compilation mode
   `(compilation-info ((,class (:foreground ,success :weight bold))))
   `(compilation-warning ((,class (:foreground ,warning :weight bold))))
   `(compilation-error ((,class (:foreground ,error :weight bold))))
   `(compilation-line-number ((,class (:foreground ,dreamcast-blue))))
   `(compilation-column-number ((,class (:foreground ,navy-blue))))
   `(compilation-mode-line-exit ((,class (:foreground ,success :weight bold))))
   `(compilation-mode-line-fail ((,class (:foreground ,error :weight bold)))))

  (custom-theme-set-variables
   'dreamcast-light
   '(frame-background-mode 'light)))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'dreamcast-light)

;;; dreamcast-light-theme.el ends here
