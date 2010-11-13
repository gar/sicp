; SICP Exercise 1.8

#lang racket

(define (cube-root x)
        (define (square y) (* y y))
        (define (good-enough? guess)
                (< (abs (- (square guess) x)) 0.001))
        (define (improve guess)
                (/ (+ (square (/ guess x)) (* 2 guess))) 3)
        (define (cube-root-iter guess)
                (if (good-enough? guess)
                    guess
                    (cube-root-iter (improve guess))))
        (cube-root-iter 1.0))

; TEST CODE
(cube-root 9)
(cube-root 27)
