(load "../chapter-1/helpers.scm")
(load "2.2.scm")

; constructor and selectors

(define (make-rect bottom-left top-right) (cons bottom-left top-right))

(define (bottom-left rect) (car rect))

(define (bottom-right rect)
  (make-point (x-point (cdr rect)) (y-point (car rect)))
)

(define (top-left rect)
  (make-point (x-point (car rect)) (y-point (cdr rect)))
)

(define (top-right rect) (cdr rect))

; use selectors to work out perimeter and area

(define (width rect)
  (- (x-point (bottom-right rect)) (x-point (bottom-left rect)))
)

(define (height rect)
  (- (y-point (top-right rect)) (y-point (bottom-right rect)))
)

(define (perimeter rect)
  (+ (double (height rect))
     (double (width rect))
  )
)

(define (area rect)
  (* (height rect) (width rect))
)

(define r (make-rect (make-point 1 1)
                     (make-point 3 7)
          )
)

(area r)
(perimeter r)
