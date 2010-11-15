; SICP Exercise 1.11

#lang racket

; recursive function
(define (f n)
        (if (< n 3)
            n
            (+ (f (- n 1))
               (* 2 (f (- n 2)))
               (* 3 (f (- n 3))))))


; this is a bad version of an iterative verison
; it does not handle where n < 3
(define (f-iter a b c count)
    (if (= count 2)
        a
        (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))
