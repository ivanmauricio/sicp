  (define (tan-cf x k)
    (define (tan-cf-rec i)
      (let ((n (if (= i 1) x (square x))))
        (if (= i k)
          0
          (/ n
             (- (- (double i) 1)
                (tan-cf-rec (inc i))
             )
          )
        )
      )
    )
    (tan-cf-rec 1)
  )

  (tan-cf (/ 3.1459 4) 10000)
