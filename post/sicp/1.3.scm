;; SICP 2e Ex 1.3

(define (f x y z)
  (define (square a) (* a a))
  (define (sumsquare a b) (+ (square a) (square b)))
  (cond ((and (< x y) (< x z))
	 (sumsquare y z))
	((and (< y x) (< y z))
	 (sumsquare x z))
	((and (< z x) (< z y))
	 (sumsquare x y))
	;; Find largest
	(else (cond ((= x y z)
		     (sumsquare x y))
		    ((= x y)
		     (sumsquare x z))
		    ((= x z)
		     (sumsquare x y))
		    ((= y z)
		     (sumsquare x z))))))

(list (f 1 2 3)
      (f 3 2 1)
      (f 3 3 1)
      (f 1 1 3)
      (f 5 5 5)
      (f 5 1 5))
