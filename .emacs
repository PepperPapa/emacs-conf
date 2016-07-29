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
 '(show-paren-mode t)
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

;;设置宽和高,我的十寸小本是110,33,大家可以调整这个参数来适应自己屏幕大小
;(set-frame-width (selected-frame) 110)
(set-frame-height (selected-frame) 23)

; 自定义函数
(defun previous-newline (times)
  "在当前光标所在行之前插入一空行"
  (interactive "p")
  (move-beginning-of-line 1)
  (newline times)
  (previous-line))

(defun next-newline (times)
  "在当前光标所在行之后插入一空行"
  (interactive "p")
  (move-end-of-line 1)
  (newline times))

(defun open-config-file ()
  "打开home目录下的.emacs文件"
  (interactive)
  (find-file "~/.emacs"))

(defun del-current-line (times)
  "删除当前行"
  (interactive "p")
  (move-beginning-of-line 1)
  (kill-line times))

(defun copy-and-paste-line ()
  "复制当前行粘贴至下一行"
  (interactive)
  (save-excursion
    (move-beginning-of-line 1)
    (set-mark-command nil)
    (move-end-of-line 1)
    (kill-ring-save (mark) (point))
    (newline)
    (yank)))
  
(global-set-key (kbd "C-S-o") 'previous-newline)
(global-set-key (kbd "C-<return>") 'next-newline)
(global-set-key (kbd "C-<") 'open-config-file)
(global-set-key (kbd "C-<delete>") 'del-current-line)
(global-set-key (kbd "C-x c") 'copy-and-paste-line)

