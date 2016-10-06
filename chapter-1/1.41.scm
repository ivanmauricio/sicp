(define (double-call procedure)
  (lambda (x)
    (procedure (procedure x))
  )
)

(((double-call (double-call double-call)) inc) 5)
