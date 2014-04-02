(defun even-p (n)
  (= (mod n 2) 0))
(defun halve (n)
  (floor n 2))
(defun double (n)
  (* n 2))
(defun ethiopian-multiplication (l r)
  (setq sum 0)
  (while (>= l 1)
    (unless (even-p l)
      (setq sum (+ r sum)))
    (setq l (halve l))
    (setq r (double r)))
  (print sum))