(module hello *
  (import scheme (chicken base) (chicken foreign) srfi-4)
  (define myfunc
    (lambda (name)
      (print "Hello, " name " !")
    )
  )
  (define IncVec (foreign-lambda integer "IncVec" f64vector integer))
  (define (ScmIncVec input) (IncVec input (f64vector-length input)))
)
