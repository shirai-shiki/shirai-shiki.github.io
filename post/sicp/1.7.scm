;; SICP 2e Ex 1.7
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

;;(define (good-enough? guess x)
;;  (< (abs (- (square guess) x)) 0.001))
(define (good-enough? guess x)
  ;; When the difference between the new guess and the current guess
  ;; is less than a fraction of the original number, stop
  (< (abs (- (improve guess x) guess )) (/ x 2048)))

(define (sqrt x)
  (sqrt-iter 1.0 x))


(list (sqrt 9)
      (sqrt (+ 100 37))
      (sqrt (+ (sqrt 2) (sqrt 3)))
      (square (sqrt 1000)))
