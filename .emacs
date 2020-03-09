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
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
;; 启用auto-complete插件功能
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20170125.245")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20170125.245/dict")
(ac-config-default) 


;; 关闭 welcome 界面
;; https://blog.csdn.net/grey_csdn/article/details/79008464
(setq inhibit-splash-screen t)


;; ----------------------------------------------------------------

;; 参考来自 https://oi-wiki.org/lang/editor/emacs/
;;Tab显示长度4
(setq-default default-tab-width 4)
(setq-default tab-width 4)

;;透明度
(set-frame-parameter (selected-frame) 'alpha (list 90 90))
(add-to-list 'default-frame-alist (cons 'alpha (list 90 90)))

;;配色方案
(setq default-frame-alist
         '((vertical-scroll-bars)
           (background-color . "grey32")
           (foreground-color . "grey")
           (cursor-color . "gold1")
           (mouse-color . "gold1")
           (tool-bar-lines . 0)
           (menu-bar-lines . 1)
           (scroll-bar-lines . 0)
           (right-fringe)
           (left-fringe)))

(set-face-background 'highlight "gray5")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")
(set-cursor-color "wheat")
(set-mouse-color "wheat")

(custom-set-variables
 '(ansi-color-faces-vector
   [default default default italic underline success warning error]))
 ;;关闭光标闪烁
 '(blink-cursor-mode nil)
(custom-set-faces)

;;高亮
(global-hl-line-mode 1);;高亮当前行
(show-paren-mode t);;高亮匹配括号
;;(global-font-lock-mode t);;语法高亮

;;设置光标形状为竖线（默认为方块）
(setq-default cursor-type 'bar)

;;设置默认编码环境
(set-language-environment "UTF-8")
;;(set-default-coding-systems 'utf-8)

;;设置一键编译 只支持C++
(defun compile-file ()(interactive)(compile (format "g++ -o %s %s -g -lm -Wall" (file-name-sans-extension (buffer-name))(buffer-name))))
(global-set-key [f9] 'compile-file)
;;;;设置编译快捷键（如果设置了一键编译不要与一键编译冲突）
;;(global-set-key [f9] 'compile)

;; ----------------------------------------------------------------
