;;;; Structure and Interpretation of Computer Programs
;;;; Chapter 1 Section 2 Procedures and the Processes They Generate

;;; Exercise 1.16

(define fast-expt-iter
  (lambda (b n)
    (fast-expt-iter-start b n 1)))

(define fast-expt-iter-start
  (lambda (b n a)
    (cond ((= n 0) a)
          ((even? n) (fast-expt-iter-start (square b) (/ n 2) a))
          (else (fast-expt-iter-start b (- n 1) (* a b))))))

(define even?
  (lambda (x)
    (= (remainder x 2) 0)))

(define square
  (lambda (x)
    (* x x)))
