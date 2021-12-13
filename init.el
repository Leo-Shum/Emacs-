(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(blink-cursor-mode nil)
 '(c-basic-offset (quote set-from-style))
 '(custom-enabled-themes nil)
 '(package-selected-packages (quote (auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; ------------------------- my config -------------------------
(setq inhibit-compacting-font-caches t) ;; Chinese font bu hui ka


; 显示行号
(global-linum-mode 1)
(setq linum-format "%d ")

; C/C++ 缩进4
; 设锤子 用 cc-mode

; backtab
; 选中*一整行* C-x TAB
; https://stackoverflow.com/questions/2249955/emacs-shift-tab-to-left-shift-the-block/2252922

; 字体
(set-frame-font "JetBrains Mono")

; 自动补全
; https://zhuanlan.zhihu.com/p/19935656

; 关闭 welcome 界面 https://blog.csdn.net/grey_csdn/article/details/79008464
(setq inhibit-splash-screen t)

; Tab显示长度4 https://oi-wiki.org/lang/editor/emacs/
; (setq-default default-tab-width 4)
; (setq-default tab-width 4)

; 高亮
(global-hl-line-mode 1);;高亮当前行
(show-paren-mode t);;高亮匹配括号
; (global-font-lock-mode t);;语法高亮

; 设置光标形状为竖线（默认为方块）
(setq-default cursor-type 'bar)

; 设置默认编码环境
(set-language-environment "UTF-8")
; (set-default-coding-systems 'utf-8)

; 关闭 autosave
(setq auto-save-default nil)

; 取消备份
(setq make-backup-files nil)
