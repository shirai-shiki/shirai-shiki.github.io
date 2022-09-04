;; SICP Ex 1.12
(define (pa n r)
  (cond ((< n 0) 0)
	((not (< r n)) 1)
	(else (+ (pa (- n 1) r)
		 (pa (- n 1) (- r 1))))))

(list(list (pa 0 0))
     (list (pa 1 0) (pa 1 1))
     (list (pa 2 0) (pa 2 1) (pa 2 2))
     (list (pa 3 0) (pa 3 1) (pa 3 2) (pa 3 3))
     (list (pa 4 0) (pa 4 1) (pa 4 2) (pa 4 3) (pa 4 4))
     (list (pa 5 0) (pa 5 1) (pa 5 2) (pa 5 3) (pa 5 4) (pa 5 5)))
