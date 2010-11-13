; SICP Exercise 1.3

#lang racket

(define (square a)
        (* a a))
(define (sum-squares a b)
        (+ (square a) (square b)))
(define (f a b c)
        (cond ((and (>= a c) (>= b c)) (sum-squares a b))
              ((and (>= a b) (>= c b)) (sum-squares a c))
              ((and (>= b a) (>= c a)) (sum-squares b c))))

(f 1 2 3)
(f 9 5 7)
(f 9 9 1)
(f 5 5 5)

