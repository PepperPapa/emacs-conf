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
 '(default ((t (:family "΢���ź�" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
(put 'narrow-to-region 'disabled nil)

;; windows��C-SPC����mark���л����뷨��ͻ���޸�ΪM-SPC������mark 
(global-unset-key (kbd "C-SPC"))  
(global-set-key (kbd "M-SPC") 'set-mark-command)
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

; �Զ��庯��
(defun previous-newline ()
  "�ڵ�ǰ���������֮ǰ����һ������"
  (interactive)
  (previous-line)
  (move-end-of-line nil)
  (newline-and-indent))

(defun next-newline ()
  "�ڵ�ǰ���������֮�����һ������"
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(defun open-config-file ()
  "��homeĿ¼��.emacs�����ļ���windows��ÿ�ζ�Ҫ����·�����������鷳
   ������һ���������󶨵���ݼ����������ٴ������ļ�"
  (interactive)
  (find-file "c:/Users/w17390/AppData/Roaming/.emacs"))

(global-set-key (kbd "C-S-o") 'previous-newline)
(global-set-key (kbd "C-<return>") 'next-newline)
(global-set-key (kbd "C-<") 'open-config-file)


