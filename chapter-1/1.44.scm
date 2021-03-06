(define dx 0.000001)

(define (avg-3 x y z)
  (/ (+ x y z)
     3
  )
)
(define (smooth f)
  (lambda (x)
    (let ((x (f (- x dx)))
          (y (f x))
          (z (f (+ x dx))))
      (avg-3 x y z)
    )
  )
)

(define (compose f g)
  (lambda (x)
    (f (g x))
  )
)

(define (repeated f n)
  (lambda (x)
    (if (= n 0)
      x
      ((compose f (repeated f (- n 1))) x)
    )
  )
)

(define (n-fold-smooth f n)
  ((repeated smooth n) f)
)
