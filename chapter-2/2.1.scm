(define (numer x) (car x))

(define (denom x) (cdr x))

(define (make-rat n d)
  (if (< d 0)
    (cons (- n) (- d))
    (cons n d)
  )
)

(define (print-rat x)
  (display (numer x))
  (display "/")
  (display (denom x))
  (newline)
)

(print-rat (make-rat 1 2))
(print-rat (make-rat -1 2))
(print-rat (make-rat 1 -2))
(print-rat (make-rat -1 -2))
