(module hello *
  (import scheme (chicken base) (chicken foreign) srfi-4)
  (define myfunc
    (lambda (name)
      (print "Hello, " name " !")
    )
  )
  (define IncVec (foreign-lambda integer "IncVec" f64vector integer))
  (define
    (ScmIncVec input)
    (let
      ((output (blob->f64vector (f64vector->blob input))))
      (IncVec output (f64vector-length output))
      output
    )
  )
)
