(define (filtered-acc combiner null-value filter term a next b)
  (if (> a b)
    null-value
    (combiner (if (filter (term a))
                  (term a)
                  null-value
              )
              (filtered-acc combiner null-value filter term (next a) next b)
    )
  )
)

(define (even? n)
  (= (remainder n 2) 0)
)

(define (sum-evens term a next b)
  (filtered-acc + 0 even? term a next b)
)

(sum-evens identity 1 inc 10)
