;;;; Structure and Interpretation of Computer Programs
;;;; Chapter 1 Section 1 Elements of Programming

;;; Exercise 1.03 sum of the squares of the two larger numbers out of three

(define sum-of-two-larger-squares
	(lambda (a b c)
		(cond
			((min-of-three? c b a) (sum-of-squares b a))
			((min-of-three? a b c) (sum-of-squares b c))
			((min-of-three? b a c) (sum-of-squares a c)))))

(define min-of-three?
	(lambda (a b c)
		(or (and (< a b) (< a c) )
				(and (< a b) (= a c) )
				(and (= a b) (< a c) ))))

(define square (lambda (x) (* x x)))
(define sum-of-squares (lambda (x y) (+ (* x x) (* y y))))
