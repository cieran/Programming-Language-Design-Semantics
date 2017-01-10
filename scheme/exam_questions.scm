; 2015 January
(define (reverse-with-count xs ys))
	(reverse (range-list xs ys))

(define (range-list xs ys)
	(map (lambda (x y) (multi-element(x y)) xs ys)))

(define (multi-element element n)
	(map (lambda (x) element) (range n)))



;	(tr '((1 2 3) (4 5 6)))
;		=> ((1 4) (2 5) (3 6))
;	(tr '((f o x e s) (s o c k s) (r o c k s)))
;		=> ((f s r) (o o o) (x c c) (e k k) (s s s))

(define (tr xs)
  (apply map list xs))


(define (after-filter predicate xs)
    (cond [(<(length xs)2) '()]                 ;;if input is NULL or length<2 => do nothing
          [else
           (cond [(predicate (car xs))                                ;;check first element with predicate
                  (cons (cadr xs) (after-filter predicate (cdr xs)))] ;;if true, store element to it's right and recursively call function on tail
                 [else (after-filter predicate (cdr xs))])]))


; 2014 Autumn
(define (add-numbers xs)
  (sum-them (flatten xs)))

(define (sum-them xs)
  (apply + (find-nums xs)))

(define (find-nums xs)
  (cond [(=(length xs)0) '()]
         [else (cond [(number? (car xs))
         (cons (car xs) (find-nums (cdr xs)))]
        [else (find-nums (cdr xs))])]))