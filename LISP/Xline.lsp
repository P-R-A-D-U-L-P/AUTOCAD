
;; xh_xv_plus.lsp
;; Custom AutoLISP for drawing various XLINE types and selecting similar objects
;; Author: PRADUL P.


(defun c:XH ()
  ;; Draw a horizontal XLINE
  (command "._xline" "_h")
  (princ)
)

(defun c:XV ()
  ;; Draw a vertical XLINE
  (command "._xline" "_v")
  (princ)
)

(defun c:XA ()
  ;; Draw an angled XLINE
  (command "._xline" "_ang")
  (princ)
)

(defun c:XB ()
  ;; Draw a bisecting XLINE
  (command "._xline" "_bisect")
  (princ)
)

(defun c:XO ()
  ;; Draw an offset XLINE
  (command "._xline" "_offset")
  (princ)
)

(defun c:XP ()
  ;; Prompt user to select from all XLINE options
  (command "._xline")
  (princ)
)
