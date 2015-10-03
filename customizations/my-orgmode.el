
(load-library "support-functions")

;; inspired by see ref:
;; source: http://mescal.imag.fr/membres/arnaud.legrand/misc/init.php

;; dealing with conflicts, e.g. windmove, yasnippets, etc..
;; ref: http://orgmode.org/manual/Conflicts.html

;; setup org mode - http://orgmode.org/worg/org-tutorials/orgtutorial_dto.html
(use-package org
             :defer t
             :init
             (progn
               (define-key global-map "\C-cl" 'org-store-link)
               (define-key global-map "\C-ca" 'org-agenda))
             :config
             (progn
               (setq org-log-done t)
               (org-babel-do-load-languages
                'org-babel-load-languages
                '((elasticsearch . t)
                  (ruby . t)
                  (python . t)
                  (lisp . t)
                  (sh . t)
                  (R . t)
                  (ocaml . t)
                  (ditaa . t)
                  (dot . t)
                  (octave . t)
                  (sqlite . t)
                  (perl . t)
                  (lilypond . t)
                  (org . t)
                  (makefile . t)))
               ;; To use this type <S and then TAB
               (add-to-list 'org-structure-template-alist
                            '("S" "#+begin_src ?\n\n#+end_src" "<src lang=\"?\">\n\n</src>"))))

;; set default directory and agenda files for org
(setq org-directory "~/org/")
(setq org-agenda-files (list "~/org/work.org"
                             "~/org/school.org" 
                             "~/org/home.org"))
(ensure-directory org-directory)
(mapcar 'ensure-text-file org-agenda-files)

;; org cosmetics
;;(setq org-hide-leading-stars t)
(setq org-startup-indented t)      ;; start org mode with identing (outline format instead of book)
(setq org-alphabetical-lists t)
(setq org-src-fontify-natively t)  ;; you want this to activate coloring in blocks
(setq org-src-tab-acts-natively t) ;; you want this to have completion in blocks
(setq org-hide-emphasis-markers t) ;; to hide the *,=, or / markers
(setq org-pretty-entities t)       ;; to have \alpha, \to and others display as utf8 http://orgmode.org/manual/Special-symbols.html

;; if you don't want normal auto src indentation from emacs  
;;(setq org-src-preserve-indentation t)

;; seamless use of babel
(setq org-export-babel-evaluate nil)
(setq org-confirm-babel-evaluate nil)

;; fix for lack of coding being detected in windows for org-mode babel results
(defun hide-ctrl-M ()
  "Hides the disturbing '^M' showing up in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

(add-hook 'org-mode-hook 'hide-ctrl-M)

 ;; Make windmove work in org-mode:
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)

