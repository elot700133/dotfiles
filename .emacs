
;;(toggle-debug-on-error)

;; Make F1 invoke help
(global-set-key [f1] 'help-command)

;; short yes no
(fset 'yes-or-no-p 'y-or-n-p)

;; Set up package manager
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

(require 'cl)
;; Guarantee all packages are installed on start
(defvar packages-list
  '(yasnippet
    evil
    autopair
    auto-complete
    irony
    irony-eldoc
    flycheck-irony
    company-irony
    magit
    monokai-theme
    helm
    helm-projectile
    helm-ls-git
    projectile
    ido
    flx-ido
    helm-swoop
    )
  "List of packages needs to be installed at launch")

;;(defun has-package-not-installed ()
;;  (loop for p in packages-list
;;        when (not (package-installed-p p)) do (return t)
;;        finally (return nil)))
;;(when (has-package-not-installed)
;;  ;; Check for new packages (package versions)
;;  (message "%s" "Get latest versions of all packages...")
;;  (package-refresh-contents)
;;  (message "%s" " done.")
;;  ;; Install the missing packages
;;  (dolist (p packages-list)
;;    (when (not (package-installed-p p))
;;      (package-install p))))

;;
;; Color
;;
(load-theme 'monokai t)

;;
;; yasnippet
;; should be loaded before auto complete 
(require 'yasnippet)
(yas-global-mode 1)

;;
;; autopair for paranthesis
;;
(require 'autopair)
(autopair-global-mode 1)

;;
;; Evil
;;
;(require 'evil)
;(evil-mode 1)
(setq evil-want-C-u-scroll t)
(setq evil-want-C-i-jump t)

;;
;; autocomplete
;;
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;;
;; irony-mode
;;
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)

;;
;; company mode
;;
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'company-mode)
;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
(define-key irony-mode-map [remap completion-at-point]
  'irony-completion-at-point-async)
(define-key irony-mode-map [remap complete-symbol]
  'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(eval-after-load 'company
'(add-to-list 'company-backends 'company-irony))
;; (optional) adds CC special commands to `company-begin-commands' in order to
;; trigger completion at interesting places, such as after scope operator
;;     std::|
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)

;;
;; flycheck-mode
;;
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
(eval-after-load 'flycheck
'(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;;
;; eldoc-mode
;;
(add-hook 'irony-mode-hook 'irony-eldoc)

;;
;; (optional) bind TAB for indent-or-complete
;;
(defun irony--check-expansion ()
(save-excursion
  (if (looking-at "\\_>") t
    (backward-char 1)
    (if (looking-at "\\.") t
      (backward-char 1)
      (if (looking-at "->") t nil)))))
(defun irony--indent-or-complete ()
"Indent or Complete"
(interactive)
(cond ((and (not (use-region-p))
            (irony--check-expansion))
       (message "complete")
       (company-complete-common))
      (t
       (message "indent")
       (call-interactively 'c-indent-line-or-region))))
(defun irony-mode-keys ()
"Modify keymaps used by `irony-mode'."
(local-set-key (kbd "TAB") 'irony--indent-or-complete)
(local-set-key [tab] 'irony--indent-or-complete))
(add-hook 'c-mode-common-hook 'irony-mode-keys)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helm
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'helm-config)
(global-set-key (kbd "C-c g") 'helm-projectile-find-file)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Projectile
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(require 'projectile-mode)
;;(require 'projectile-global-mode)
;; Super-f
(define-key projectile-mode-map [?\s-t] 'projectile-find-other-file)
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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
