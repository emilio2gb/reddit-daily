; 2015-05-11.rkt
; 3 August 2015 18:07 CEST
#lang racket/base

(define (avg xs)
  (/ (apply + xs) (length xs)))

(define (std xs)
  (define a (avg xs))
  (set! xs (map (lambda(number)
         (expt (- number a) 2)) xs))
  (sqrt (avg xs)))
