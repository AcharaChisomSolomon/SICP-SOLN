(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))


;(define (sqrt-iter guess x)
;  (if (good-enough? guess x)
;      guess
;      (sqrt-iter (improve guess x) x)))

; not a good idea to use this since all arguments are evaluated before
; being used in the applicative model of executing programs which means
; an ifinite recrsive loop
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else      else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (sqrt- x)
  (sqrt-iter 1.0 x))

(sqrt- 9) 