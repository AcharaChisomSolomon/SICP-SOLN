(define (square x) (* x x))

(define (sum_of_squares x y)
  (+ (square x)
     (square y)))

(define (sum_of_squares_of_larger_two x y z)
  (cond ((and (< x y)
              (< x z))
         (sum_of_squares y z))
        ((and (< y x)
              (< y z))
         (sum_of_squares x z))
        (else (sum_of_squares x y))))

(sum_of_squares_of_larger_two 1 2 3)  ; 13
(sum_of_squares_of_larger_two 1 2 2)  ; 8
(sum_of_squares_of_larger_two 1 2 1)  ; 5
(sum_of_squares_of_larger_two 1 1 1)  ; 2