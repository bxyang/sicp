
(define (square x) (* x x))
(define (abs x) (if (< x 0) (- x) x))
(define (good-enough new_guess old_guess) (< (abs (/ (- new_guess old_guess) old_guess)) 0.01))
(define (improve-guess guess x) 
    (/ (+ (* 2 guess) 
          (/ x (square guess))
       ) 
       3
    )
)

(define (rcube-iter guess x)
  (if (good-enough (improve-guess guess x) guess)
      (improve-guess guess x)
      (rcube-iter (improve-guess guess x) x)))

(define (rcube x) (rcube-iter 1.0 x))
