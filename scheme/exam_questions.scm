(define (reverse-with-count xs ys))
	(reverse (range-list xs ys))

(define (range-list xs ys)
	(map (lambda (x y) (multi-element(x y)) xs ys)))

(define (multi-element element n)
	(map (lambda (x) element) (range n)))



;
;	(tr '((1 2 3) (4 5 6)))
;		=> ((1 4) (2 5) (3 6))
;	(tr '((f o x e s) (s o c k s) (r o c k s)))
;		=> ((f s r) (o o o) (x c c) (e k k) (s s s))



