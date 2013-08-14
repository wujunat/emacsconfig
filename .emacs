(setenv "LANG" "zh_CN.UTF-8")
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t) 
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t) 
(setenv "PATH" (concat (getenv "PATH") ":" "/opt/local/bin/" ":" "/Users/xianzhen/bin:/Users/xianzhen/android-sdks/platform-tools/:/Users/xianzhen/android-sdks/tools/:/Users/xianzhen/android-ndk-r8e/"))

;android env
(setenv "ANDROID_HOME" "/Users/xianzhen/android-sdks/")

(setq ns-function-modifier 'hyper)
;(setq mac-control-modifier 'super)
;(setq mac-option-modifier 'meta)
;(setq mac-command-modifier 'control)
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

(global-set-key (kbd "H-p") 'speedbar)
(global-set-key (kbd "H-j") 'semantic-ia-fast-jump)
(global-set-key (kbd "H-r") 'find-grep)
(global-set-key (kbd "H-f") 'find-dired)
(global-set-key (kbd "H-l") 'recentf-open-files)

(require 'cedet)
(require 'ede)
(semantic-mode 1)
(global-semanticdb-minor-mode 1)
(global-semantic-decoration-mode 1)
(global-semantic-idle-completions-mode 1)
(global-semantic-idle-summary-mode 1)
(global-semantic-highlight-func-mode 1)
(setq semanticdb-default-save-directory "~/.emacs.d/")

;recentf-mode
(recentf-mode 1)

(server-start)

(defalias 'list-buffers 'ibuffer)
(ido-mode 1)

(setq org-agenda-files (list "~/work/todo.org"))
(global-set-key "\C-ca" 'org-agenda)
