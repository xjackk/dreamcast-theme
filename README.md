# Dreamcast Theme for Emacs

A pair of beautiful Emacs themes inspired by the iconic Sega Dreamcast console, featuring the vibrant orange (#FF6600) and electric blue (#00A0E9) from the Dreamcast branding.

## Screenshots

(coming soon)

## Features

- **Two variants**: Dark mode (glowing screen aesthetic) and Light mode (clean white shell design)
- **Carefully crafted color palette** based on Dreamcast branding
- **Standalone theme** - works with any Emacs setup (not just Doom)
- **No font modifications** - respects your existing font configuration
- **Extensive face support** for:
  - Standard Emacs faces (works with all languages)
  - Doom Emacs
  - Org mode
  - Markdown
  - Magit (enhanced readability for light mode)
  - Dired (improved file browsing)
  - Company / Corfu (autocomplete)
  - Ivy / Counsel / Vertico / Helm (completion frameworks)
  - Treemacs
  - Git Gutter
  - Which-key
  - Rainbow delimiters
  - Flycheck / Flymake
  - Whitespace mode (subtle, non-intrusive)
  - Language-specific enhancements for:
    - Ruby (constants, operators, string delimiters)
    - Python (builtins, decorators)
    - Go (function calls, packages)
    - TypeScript/JavaScript (JSDoc, object properties)
  - And more!

## Installation

### Manual Installation (for testing)

1. Clone or download this repository:
   ```bash
   git clone https://github.com/yourusername/dreamcast-theme.git
   ```

2. Add the theme directory to your Emacs load path and load the theme:
   ```elisp
   (add-to-list 'custom-theme-load-path "/path/to/dreamcast-theme")
   (load-theme 'dreamcast-dark t)  ; or 'dreamcast-light
   ```

### Doom Emacs

Add to your `~/.doom.d/config.el` or `~/.config/doom/config.el`:

```elisp
;; First, add the theme directory to load path
(add-to-list 'custom-theme-load-path "~/projects/dreamcast-theme")

;; Then set the theme
(setq doom-theme 'dreamcast-dark)  ; or 'dreamcast-light
```

Then run:
```bash
~/.config/emacs/bin/doom sync
```

Or reload your config with `SPC h r r` (or `M-x doom/reload`).

### use-package

```elisp
(use-package dreamcast-theme
  :ensure t
  :config
  (load-theme 'dreamcast-dark t))
```

### Straight.el

```elisp
(straight-use-package
 '(dreamcast-theme :type git :host github :repo "yourusername/dreamcast-theme"))
(load-theme 'dreamcast-dark t)
```

## Switching Between Themes

To switch between light and dark variants:

```elisp
M-x load-theme RET dreamcast-dark RET
M-x load-theme RET dreamcast-light RET
```

Or bind a key in your config:

```elisp
(defun toggle-dreamcast-theme ()
  "Toggle between Dreamcast light and dark themes."
  (interactive)
  (if (eq (car custom-enabled-themes) 'dreamcast-dark)
      (progn
        (disable-theme 'dreamcast-dark)
        (load-theme 'dreamcast-light t))
    (progn
      (disable-theme 'dreamcast-light)
      (load-theme 'dreamcast-dark t))))

(global-set-key (kbd "C-c t t") 'toggle-dreamcast-theme)
```

## Contributing

Issues and pull requests are welcome! If you'd like to add support for additional modes or improve the color scheme, please feel free to contribute.

## License

MIT License - see LICENSE file for details
