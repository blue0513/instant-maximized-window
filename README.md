# Instant Maximized Window

Instantly maximize a window in Emacs!!

## How It Works

[gif](./images/emacs-maximize.gif)

## Usage

In your `init.el`,

```elisp
(add-to-list 'load-path "YOUR PATH")
(require 'instant-maximized-window)

;; if you like to bind the key
(global-set-key [YOUR FAV KEY] 'window-temp-maximize)
```
