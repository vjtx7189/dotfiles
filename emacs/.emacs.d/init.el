;;; init.el --- Basic Emacs configuration -*- lexical-binding: t; -*-

;;; Commentary:
;; Minimal starting configuration.

;;; Code:

;; Turn off the startup screen
(setq inhibit-startup-screen t)

;; Turn off tool bar, menu bar and scroll bar
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Turn off both the audible and the visible bell
(setq ring-bell-function 'ignore)
(setq visible-bell nil)

;; Turn off auto-save files (#file#)
(setq auto-save-default nil)

;; Turn off lock files (.#file)
(setq create-lockfiles nil)

;; Turn off backup files (file~)
(setq make-backup-files nil)

;; Font size: 14pt (height is in 1/10 pt)
(set-face-attribute 'default nil :height 140)

;; Create a new file in the temp directory and open it
(defun create-temp-file ()
  "Create a uniquely named file in `temporary-file-directory' and open it."
  (interactive)
  (find-file (make-temp-file "emacs-")))

;;; init.el ends here
