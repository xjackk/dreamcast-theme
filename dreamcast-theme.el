;;; dreamcast-theme.el --- A theme inspired by the Sega Dreamcast -*- lexical-binding: t; -*-

;; Copyright (C) 2025 Jack Killilea

;; Author: Jack Killilea <xkillilea@gmail.com>
;; URL: https://github.com/xjackk/dreamcast-theme
;; Version: 1.0.0
;; Package-Requires: ((emacs "24.1"))
;; Keywords: faces, themes
;; SPDX-License-Identifier: GPL-3.0-or-later

;; This file is NOT part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; A theme inspired by the iconic Sega Dreamcast console,
;; featuring the vibrant orange and electric blue from the Dreamcast
;; branding.
;;
;; This package includes two variants:
;; - dreamcast-theme-dark: A dark theme with a "glowing screen" aesthetic
;; - dreamcast-theme-light: A light theme capturing the console's clean design
;;
;; To load the dark variant (default):
;;   (load-theme 'dreamcast t)
;;
;; To load the light variant:
;;   (load-theme 'dreamcast-theme-light t)
;;
;; To load the dark variant explicitly:
;;   (load-theme 'dreamcast-theme-dark t)

;;; Code:

(deftheme dreamcast
  "A dark theme inspired by the Sega Dreamcast (default variant).")

;; This is a meta-theme that loads the dark variant by default
;; The actual theme implementation is in dreamcast-theme-dark-theme.el

(let ((class '((class color) (min-colors 89)))
      ;; Dark Mode Palette
      ;; Background & UI
      (bg                "#0D1117")  ; Very dark blue-black
      (bg-alt            "#1A2332")  ; Darker panels/modeline
      (bg-highlight      "#2A3F54")  ; Slightly brighter blue-gray
      (border            "#2D3748")  ; Borders/dividers

      ;; Foreground & Text
      (fg                "#E6EDF3")  ; Crisp white-gray
      (fg-alt            "#9CA3AF")  ; Muted gray for secondary text
      (comment           "#8B9FB5")  ; Lighter blue-gray

      ;; Syntax highlighting
      (dreamcast-orange  "#FF6600")  ; Signature Dreamcast orange
      (dreamcast-blue    "#00A0E9")  ; Electric blue (keywords)
      (cyan              "#4FC3F7")  ; Lighter cyan-blue (functions)
      (pale-blue         "#6CB6FF")  ; Medium blue (types/variables)
      (light-orange      "#FFA726")  ; Constants

      ;; Semantic colors
      (error             "#FF6B6B")  ; Soft red, less harsh
      (warning           "#FF8533")  ; Lighter Dreamcast orange
      (success           "#2DD4BF")  ; Teal (blue-green) fits Dreamcast palette aesthetic
      (info              "#00A0E9"))  ; Dreamcast electric blue!

  (custom-theme-set-faces
   'dreamcast

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
   `(font-lock-constant-face ((,class (:foreground ,light-orange))))
   `(font-lock-doc-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,light-orange :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,dreamcast-blue :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,dreamcast-orange))))
   `(font-lock-type-face ((,class (:foreground ,pale-blue))))
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

   ;; Search
   `(isearch ((,class (:background ,dreamcast-orange :foreground ,bg :weight bold))))
   `(lazy-highlight ((,class (:background ,bg-highlight :foreground ,cyan :weight bold))))

   ;; Links
   `(link ((,class (:foreground ,dreamcast-blue :underline t))))
   `(link-visited ((,class (:foreground ,pale-blue :underline t))))

   ;; Minibuffer
   `(minibuffer-prompt ((,class (:foreground ,dreamcast-blue :weight bold))))

   ;; Parentheses matching
   `(show-paren-match ((,class (:background ,dreamcast-blue :foreground ,bg :weight bold))))
   `(show-paren-mismatch ((,class (:background ,error :foreground ,bg :weight bold))))

   ;; Success/Warning/Error
   `(success ((,class (:foreground ,success :weight bold))))
   `(warning ((,class (:foreground ,warning :weight bold))))
   `(error ((,class (:foreground ,error :weight bold)))))

  (custom-theme-set-variables
   'dreamcast
   '(frame-background-mode 'dark)))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'dreamcast)

;;; dreamcast-theme.el ends here
