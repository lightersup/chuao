;;; catppuccin-dark.el --- Catppuccin Dark Inspired Theme -*- lexical-binding: t; -*-

(deftheme catppuccin-dark "A soft pastel catppuccin dark theme for Emacs.")

(let ((class '((class color) (min-colors 89)))

      ;; Catppuccin palette
      (bg "#1E1E2E")       ;; base
      (fg "#D9E0EE")       ;; text
      (rosewater "#F5E0DC")
      (flamingo "#F2CDCD")
      (pink "#F5C2E7")
      (mauve "#CBA6F7")
      (red "#F38BA8")
      (maroon "#EBA0AC")
      (peach "#FAB387")
      (yellow "#F9E2AF")
      (green "#A6E3A1")
      (teal "#94E2D5")
      (sky "#89DCEB")
      (sapphire "#74C7EC")
      (blue "#89B4FA")
      (lavender "#B4BEFE")
      (text-muted "#6E6C7E"))

  (custom-theme-set-faces
   'catppuccin-dark

   ;; Basics
   `(default ((,class (:background ,bg :foreground ,fg))))
   `(cursor ((,class (:background ,pink))))
   `(fringe ((,class (:background ,bg))))
   `(region ((,class (:background ,sapphire :foreground ,bg))))
   `(highlight ((,class (:background ,text-muted :foreground ,bg))))
   `(minibuffer-prompt ((,class (:foreground ,blue :weight bold))))

   ;; Font lock
   `(font-lock-builtin-face ((,class (:foreground ,mauve :weight bold))))
   `(font-lock-comment-face ((,class (:foreground ,text-muted :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,peach))))
   `(font-lock-function-name-face ((,class (:foreground ,sky :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,lavender :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,green))))
   `(font-lock-type-face ((,class (:foreground ,yellow :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,rosewater))))
   `(font-lock-warning-face ((,class (:foreground ,red :weight bold))))

   ;; UI elements
   `(mode-line ((,class (:background ,bg :foreground ,fg :box (:line-width -1 :style released-button)))))
   `(mode-line-inactive ((,class (:background ,bg :foreground ,text-muted :box (:line-width -1 :style released-button)))))
   `(vertical-border ((,class (:foreground ,text-muted))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'catppuccin-dark)
;;; catppuccin-dark.el ends here
