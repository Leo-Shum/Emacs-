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

;; ----------------------------------------------------------------
(setq inhibit-compacting-font-caches t) ;; Chinese font bu hui ka


;; 显示行号
(global-linum-mode 1)
(setq linum-format "%d ")


;; C/C++ 缩进4
;; 设锤子 用 cc-mode


;; backtab
;; https://stackoverflow.com/questions/23692879/emacs24-backtab-is-undefined-how-to-define-this-shortcut-key
(global-set-key (kbd "<backtab>") 'un-indent-by-removing-4-spaces)
(defun un-indent-by-removing-4-spaces ()
  "remove 4 spaces from beginning of of line"
  (interactive)
  (save-excursion
    (save-match-data
      (beginning-of-line)
      ;; get rid of tabs at beginning of line
      (when (looking-at "^\\s-+")
        (untabify (match-beginning 0) (match-end 0)))
      (when (looking-at "^    ")
        (replace-match "")))))

;; 字体
;; (set-default-font "Consolas")
(set-default-font "JetBrains Mono")


;; 中文乱码，什么乱码啊，都 utf-8
;; https://emacs-china.org/t/revert-buffer-with-coding-system-utf-8/9415
;; https://emacs-china.org/t/coding-system-utf-8-org/9429
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Coding system
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;; backwards compatibility as default-buffer-file-coding-system
;; is deprecated in 23.2.
(if (boundp 'buffer-file-coding-system)
    (setq-default buffer-file-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8))

;; Treat clipboard input as UTF-8 string first; compound text next, etc.
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))


;; 自动补全
;; https://zhuanlan.zhihu.com/p/19935656
;; 配置melpa Packages源

;; 关闭 welcome 界面
;; https://blog.csdn.net/grey_csdn/article/details/79008464
(setq inhibit-splash-screen t)


;; ----------------------------------------------------------------

;; 参考来自 https://oi-wiki.org/lang/editor/emacs/
;;Tab显示长度4
(setq-default default-tab-width 4)
(setq-default tab-width 4)

;;高亮
(global-hl-line-mode 1);;高亮当前行
(show-paren-mode t);;高亮匹配括号
;;(global-font-lock-mode t);;语法高亮

;;设置光标形状为竖线（默认为方块）
(setq-default cursor-type 'bar)

;;设置默认编码环境
(set-language-environment "UTF-8")
;;(set-default-coding-systems 'utf-8)

;; 关闭 autosave
(setq auto-save-default nil)