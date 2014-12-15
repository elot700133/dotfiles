
;; Make F1 invoke help
(global-set-key [f1] 'help-command)

;; short yes no
(fset 'yes-or-no-p 'y-or-n-p)

;; Set up package manager
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
;;(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
               ;;   ("elpa" . "http://tromey.com/elpa/")
                ;;  ("melpa" . "http://melpa.milkbox.net/packages/")
 ;;                 ))
  ;;(add-to-list 'package-archives source t)

;;(add-to-list 'load-path "/home/too/dotfiles/emacs.d/elpa/ecb-20140215.114")

(require 'cl)
;; Guarantee all packages are installed on start
(defvar packages-list
  '(yasnippet
    ecb
    evil
    autopair
    auto-complete
    irony
    magit
    cmake-project
    auto-complete-etags
    )
  "List of packages needs to be installed at launch")

(defun has-package-not-installed ()
  (loop for p in packages-list
        when (not (package-installed-p p)) do (return t)
        finally (return nil)))
(when (has-package-not-installed)
  ;; Check for new packages (package versions)
  (message "%s" "Get latest versions of all packages...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; Install the missing packages
  (dolist (p packages-list)
    (when (not (package-installed-p p))
      (package-install p))))


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
;; irony
(require 'irony)
;;----------------------------------------------
(require 'evil)
(evil-mode 1)
;;----------------------------------------------
;; Emacs Code Browser
(require 'ecb)
;;----------------------------------------------
;; autocomplete
(require 'auto-complete)
(auto-complete-mode 1)
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")
;; auto-complete-etags
(require 'auto-complete-etags)
(custom-set-variables
  '(ac-etags-requires 1))

(eval-after-load "etags"
  '(progn
      (ac-etags-setup)))

(add-hook 'c-mode-common-hook 'ac-etags-ac-setup)
(add-hook 'ruby-mode-common-hook 'ac-etags-ac-setup)
;;(add-to-list 'ac-sources 'ac-source-etags)
;;(setq ac-etags-use-document t)
;;; function to be called when entering c-mode.
;;(defun my-c-mode-common-hook-func ()
;;  (interactive)
;;  "Function to be called when entering into c-mode."
;;  (when (and (require 'auto-complete nil t) (require 'auto-complete-config nil t))
;;    (auto-complete-mode t)
;;    (make-local-variable 'ac-sources)
;;    (setq ac-auto-start 2)
;;    (setq ac-sources '(ac-source-words-in-same-mode-buffers
;;                       ac-source-dictionary))
;;    (when (require 'auto-complete-etags nil t)
;;      (add-to-list 'ac-sources 'ac-source-etags)
;;      (setq ac-etags-use-document t))))
;;
;;(add-hook 'c-mode-common-hook 'my-c-mode-common-hook-func)

;;----------------------------------------------
;; cmake project
(require 'cmake-project)

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

