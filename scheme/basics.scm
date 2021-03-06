#lang scheme
(require scheme/mpair)

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (square x) (* x x))

(define (sum listVals)
  (if (= 1 (length listVals))
      (car listVals)
      (+ (car listVals)
         (sum (cdr listVals)))))

(define (flip-list listVals)
  (reverse listVals))

(define (addnum num1 num2)
  (+ num1 num2))
(define list1 (list 1 2 3))
(define list2 (list 8 2 3))

(define baz (list 1 20 31))
(define (double x) (* x 2))
(define (double-all x)(map double x))

(define (my-map fn lst)
  (if (null? lst)
      null
      (cons (fn (car lst))
            (my-map fn (cdr lst)))))

(define qux (list 1 2 3 4))
(define (my-foldr fn start lst)
  (if (null? lst)
      start
      (fn (car lst) (my-foldr fn start (cdr lst)))))

(define (reverse-with-count xs ys)
  (reverse (flatten (repeat-list xs ys))))

(define (repeat-list xs ys)
  (map (lambda(x y) (repeat x y)) xs ys))

(define (repeat x y)
  (map (lambda(fn) x) (range y)))

(define (tr xs)
  (apply map list xs))

(define (doubleRev xs)
  (reverse (double-all xs)))

(define (repeat2 x y)
	(map (lambda(fn) x) (range y)))

(define (repeat-list2 xs ys)
  (repeat2 (car xs) (car ys))
  (repeat-list2 (cdr xs) (cdr ys)))

(define (cube x) (expt x 3))
(define cubed(apply cube (list 2)))
(define cubed2(apply cube '(2)))


(define (pal xs)
  (check (flatten xs)))
(define (check xs)
  (equal? xs (reverse xs)))

(define (isEq x y)
  (equal? x y))