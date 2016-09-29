(define (product term a next b)
  (if (> a b)
    1
    (* (term a)
       (product term (next a) next b)
    )
  )
)

(define (factorial n)
  (product identity 1 inc n)
)

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* (term a) result))
    )
  )
  (iter a 1)
)

(product-iter cube 2 inc 3)
