
(define (square x) (* x x))
(define (abs x) (if (< x 0) (- x) x))
(define (good-enough guess x) (< (abs (- (square guess) x)) 0.001))
(define (improve-guess guess x) (/ (+ guess (/ x guess)) 2))

(define (sqrt-iter guess x)
  (if (good-enough guess x)
      guess
      (sqrt-iter (improve-guess guess x) x)))

(define (sqrt2 x) (sqrt-iter 1.0 x))
