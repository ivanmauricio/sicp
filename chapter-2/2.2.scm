(define (make-segment start-point end-point) (cons start-point end-point))

(define (start-segment segment) (car segment))

(define (end-segment segment) (cdr segment))

(define (make-point x y) (cons x y))

(define (x-point point) (car point))

(define (y-point point) (cdr point))

(define (average x y)
  (/ (+ x y) 2)
)

(define (midpoint-segment s)
  (let ((start (start-segment s))
        (end (end-segment s)))
    (let((average-x (average (x-point start) (x-point end)))
         (average-y (average (y-point start) (y-point end))))
      (make-point average-x average-y)
    )
  )
)

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")")
)

(define seg (make-segment (make-point 2 3) (make-point 10 15)))

;(print-point (midpoint-segment seg))
