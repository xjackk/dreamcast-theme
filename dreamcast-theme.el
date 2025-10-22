;;; dreamcast-theme.el --- A pair of themes inspired by the Sega Dreamcast -*- lexical-binding: t; -*-

;; Copyright (C) 2025 Jack Killilea

;; Author: Jack Killilea <xkillilea@gmail.com>
;; URL: https://github.com/xjackk/dreamcast-theme
;; Version: 1.0.0
;; Package-Requires: ((emacs "24.1"))
;; Keywords: faces, themes

;; This file is NOT part of GNU Emacs.

;;; Commentary:

;; This package provides two beautiful Emacs themes inspired by the iconic
;; Sega Dreamcast console, featuring the vibrant orange (#FF6600) and electric
;; blue (#00A0E9) from the Dreamcast branding.
;;
;; The package includes:
;; - dreamcast-dark: A dark theme with a "glowing screen" aesthetic
;; - dreamcast-light: A light theme capturing the console's clean, white shell design
;;
;; To load a theme:
;;   (load-theme 'dreamcast-dark t)
;;   (load-theme 'dreamcast-light t)
;;
;; To toggle between themes, you can use:
;;   M-x dreamcast-theme-toggle

;;; Code:

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;;;###autoload
(defun dreamcast-theme-toggle ()
  "Toggle between Dreamcast light and dark themes."
  (interactive)
  (if (eq (car custom-enabled-themes) 'dreamcast-dark)
      (progn
        (disable-theme 'dreamcast-dark)
        (load-theme 'dreamcast-light t))
    (progn
      (disable-theme 'dreamcast-light)
      (load-theme 'dreamcast-dark t))))

(provide 'dreamcast-theme)

;;; dreamcast-theme.el ends here
