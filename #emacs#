;; Set up package manager
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
;;(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/") t)
;;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
               ;;   ("elpa" . "http://tromey.com/elpa/")
                ;;  ("melpa" . "http://melpa.milkbox.net/packages/")
 ;;                 ))
  ;;(add-to-list 'package-archives source t)
(package-initialize)

(add-to-list 'load-path "/home/too/dotfiles/emacs.d/elpa/ecb-20140215.114")
;; Make F1 invoke help
(global-set-key [f1] 'help-command)

;; short yes no
(fset 'yes-or-no-p 'y-or-n-p)

;;----------------------------------------------
;; yasnippet
;; should be loaded before auto complete 
(require 'yasnippet)
(yas-global-mode 1)
;;----------------------------------------------
;; autopair for paranthesis
(require 'autopair)
(autopair-global-mode 1)
;;----------------------------------------------
;; autocomplete
(require 'auto-complete)
(auto-complete-mode 1)
(ac-set-trigger-key "TAB")
;;(ac-set-trigger-key "<tab>")
;;----------------------------------------------
;; irony
(require 'irony)
;;----------------------------------------------
(require 'evil)
(evil-mode 1)
;; Emacs Code Browser
(require 'ecb)
;; exit emacs
;; C-x C-c

;; Save file
;; C-x s

;; Cancel a command
;; C-g

;; Bring up a shell
;; M-x shell 

;; Compile code
;; M-x compile

;; Buffers
;; Switching
;; C-x <left> or <right>
;; List
;; M-x list-buffers or C-x C-b

;; Windows
;; Display only 1 buffer
;; C-x 1

;; Viper mode
;; M-x viper-mode
;; Turn off viper mode
;; M-x viper-go-away

;; Debugging
;; C-h v <variables>  ;; example C-h v load-path RET

