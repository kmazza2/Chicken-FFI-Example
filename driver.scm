(import hello)
(import srfi-4)
(display "Defining x...") (newline)
(define x (f64vector 0 1 2))
(display x) (newline)
(display "Defining y to be pointwise increment of x...") (newline)
(define y (ScmIncVec x))
(display "x:") (newline)
(display x) (newline)
(display "y:") (newline)
(display y) (newline)
(exit 0)
