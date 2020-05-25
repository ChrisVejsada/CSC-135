#1
#lang racket

(define (cube n)
  ( * n n n ))

(define (sphere-volume radius)
  ( / ( * 4 (* 3.14 (cube radius))) 3))

(define (shell-volume outer-radius inner-radius)
  ( - (sphere-volume outer-radius) (sphere-volume inner-radius )))
__________________________________________
#2
#lang racket
(define (close? number-1 number-2 limit)
  (< (abs ( - number-1 number-2)) limit ))

__________________________________________
#3
#lang racket
(define (how-many a b c)
  (cond
    [(> (discr a b c) 0) 2]
    [(= (discr a b c) 0) 1]
    [(< (discr a b c) 0) 0]))

(define (discr a b c)
  ( - ( * b b )( * 4 a c )))
__________________________________________
#4
#lang racket
(define (filter-out-symbol list symbol)
  (cond ((null? list) '())
        ((eq? symbol (car list))
         (filter-out-symbol (cdr list) symbol))
        (else (cons (car list)
                    (filter-out-symbol (cdr list) symbol)))))
__________________________________________
#5-11.8(b)

#lang racket

(define(minoflist L)
  (cond((null?(cdr L))(car L))
       ((<(car L)(minoflist(cdr L)))(car L))
       (else(minoflist(cdr L)))))

(define(maxoflist L)
  (cond((null?(cdr L))(car L))
       ((>(car L)(maxoflist(cdr L)))(car L))
       (else(maxoflist(cdr L)))))

(define(pMinMax L)
  (list(minoflist L)(maxoflist L)))

__________________________________________
#6-11.8(i)

#lang racket
(define (inc_n n)
  (lambda (x)(+ n x )))


