(define (compose f g)
  (lambda (x)
    (f (g x))
  )
)

(define (repeated f n)
  (define (helper result x)
    (if (= x 0)
      result
      (helper (f result) (- x 1))
    )
  )
  (lambda (y) (helper y n))
)

(define (repeated f n)
  (lambda (x)
    (if (= n 0)
      x
      ((compose f (repeated f (- n 1))) x)
    )
  )
)

((repeated square 2) 5)
