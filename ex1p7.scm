
(define (square x) (* x x))
(define (abs x) (if (< x 0) (- x) x))
(define (good-enough new_guess old_guess) (< (abs (/ (- new_guess old_guess) old_guess)) 0.01))
(define (improve-guess guess x) (/ (+ guess (/ x guess)) 2))

(define (sqrt-iter guess x)
  (if (good-enough (improve-guess guess x) guess)
      (improve-guess guess x)
      (sqrt-iter (improve-guess guess x) x)))

(define (sqrt1 x) (sqrt-iter 1.0 x))
