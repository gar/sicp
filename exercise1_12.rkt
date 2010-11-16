; SICP Exercise 1.12

#lang racket

(define (fac n)
    (if (= n 1)
        1
        (* n (fac (- n 1)))))

(define (choose n m)
    (/ (fac n) (* (fac m) (fac (- n m)))))

(define (num-items-to-row n)
    (if (= n 0)
        1
        (+ (items-on-row n) (num-items-to-row (- n 1)))))
(define (items-on-row n)
    (+ n 1))

(define (what-row idx)
    (what-row-iter 0 idx))
(define (what-row-iter row idx)
    (if (< (- idx (num-items-to-row row)) 0)
        row
        (what-row-iter (+ row 1) idx)))

(define (what-col idx)
    (if (= idx 0)
        0
        (- idx (num-items-to-row (- (what-row idx) 1)))))

(define (fib-val idx)
    (choose (what-row idx) (what-col idx)))
