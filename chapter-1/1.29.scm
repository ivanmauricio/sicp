(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b)
    )
  )
)

(define (cube x)
  (* x x x)
)

(define (inc-by-2 x)
  (+ 2 x)
)

(define (simpsons f a b n)
  (define h (/ (- b a) n))
  (define (yk k) (f (+ a (* h k))))
  (define simpson-sum
    (+ (+ (yk 0.0) (yk n))
       (* 4.0 (sum yk 1.0 inc-by-2 (- n 1.0)))
       (* 2.0 (sum yk 2.0 inc-by-2 (- n 2.0)))
    )
  )
  (* (/ h 3.0) simpson-sum)
)

(simpsons cube 0.0 1.0 100.0)
