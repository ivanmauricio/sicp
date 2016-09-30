  (define (d i)
    (let ((n (+ i 1.0)))
      (if (= (remainder n 3.0) 0)
        (* 2 (/ n 3))
        1.0
      )
    )
    )

  (define (cont-frac n d k)
    (define (cont-frac-rec i)
      (/ (n i)
         (+ (d i)
            (if (= i k)
              0
              (cont-frac-rec (+ 1 i))
            )
         )
      )
    )
    (cont-frac-rec 1.0)
  )

  (cont-frac (lambda (i) 1) d 100)
