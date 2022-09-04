;; SICP Ex 1.11
(define (f n)
  (if (< n 3) n
      (+ (f(- n 1)) (* 2 (f(- n 2))) (* 3 (f(- n 2))))))

(list (f 1)
      (f 2)
      (f 4)
      (f 8))
