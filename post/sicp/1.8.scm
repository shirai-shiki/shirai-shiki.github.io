;; SICP 2e Ex 1.8
(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* guess 2)) 3))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess )) (/ x 2048)))

(define (cbrt x)
  (cbrt-iter 1.0 x))


(list (cbrt 8)
      (cbrt (+ 100 37))
      (cbrt (+ (cbrt 2) (cbrt 3))))

