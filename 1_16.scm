(define (expt b n)
  (expt-iter 1 b n))

(define (expt-iter a b n)
  (cond ((= n 0)
      a)
      ((even? n)
       (expt-iter a
                  (* b b)
                  (/ n 2)))
      ((odd? n)
       (expt-iter (* a b)
                  b
                  (- n 1)))))
