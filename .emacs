(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tango)))
 '(inhibit-startup-screen t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Î¢ÈíÑÅºÚ" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
(put 'narrow-to-region 'disabled nil)

(global-unset-key (kbd "C-SPC"))  
(global-set-key (kbd "M-SPC") 'set-mark-command)
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

; 自定义函数
(defun previous-newline ()
  "在当前光标所在行之前插入一空行"
  (interactive)
  (move-beginning-of-line nil)
  (newline)
  (previous-line))

(defun next-newline ()
  "在当前光标所在行之后插入一空行"
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(defun open-config-file ()
  "打开home目录下的.emacs文件"
  (interactive)
  (find-file "~/.emacs"))

(defun del-current-line ()
  "删除当前行"
  (interactive)
  (move-beginning-of-line nil)
  (kill-line nil))

(global-set-key (kbd "C-S-o") 'previous-newline)
(global-set-key (kbd "C-<return>") 'next-newline)
(global-set-key (kbd "C-<") 'open-config-file)
(global-set-key (kbd "C-<delete>") 'del-current-line)
