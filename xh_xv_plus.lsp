
;; xh_xv_plus.lsp
;; Custom AutoLISP for drawing various XLINE types and selecting similar objects
;; Author: PRADUL P.
;; Date: 19-07-2025

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

(defun c:SA ()
  ;; Select all similar objects to a single selected one
  (prompt "\nSelect an object to find similar: ")
  (setq obj (ssget "+.:S"))
  (if obj
    (progn
      (command "SELECTSIMILAR" obj)
    )
  )
  (princ)
)

(defun c:SR ()
  ;; Select similar objects from a rectangular selection
  (prompt "\nSelect multiple objects to find similar: ")
  (setq obj (ssget))
  (if obj
    (progn
      (command "SELECTSIMILAR" obj)
    )
  )
  (princ)
)
