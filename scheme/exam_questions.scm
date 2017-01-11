; 2016 January and 2015 Autumn
(define (reverse-with-count xs ys))
	(reverse (range-list xs ys))

(define (range-list xs ys)
	(map (lambda (x y) (multi-element(x y)) xs ys)))

(define (multi-element element n)
	(map (lambda (x) element) (range n)))

;	2016 Autumn
(define (tr xs)
  (apply map list xs))


; 2015 January
(define (after-filter predicate xs)
    (cond [(<(length xs)2) '()]                 ;;if input is NULL or length<2 => do nothing
        [else
        (cond [(predicate (car xs))                                ;;check first element with predicate
              (cons (cadr xs) (after-filter predicate (cdr xs)))] ;;if true, store element to it's right and recursively call function on tail
              [else (after-filter predicate (cdr xs))])]))

; 2014 January
; (deep-fetch symbol? '(the (quick 6 fox 8 9) slick 2))
(define (deep-fetch pred xs)
  (go-fetch pred (flatten xs)))

(define (go-fetch pred xs)
    (cond [(=(length xs)0) (list )]
      [else
        (cond [(pred (car xs))
               (cons (car xs) (deep-fetch pred (cdr xs)))]
      [else (deep-fetch pred (cdr xs))])]))


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

