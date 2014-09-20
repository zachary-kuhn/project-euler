(ns euler.core
  (:gen-class))

(println (reduce + (filter (fn [x] (= (mod x 2) 0)) 
  (take-while
    (fn [x] (<= x 4000000))
    ((fn fibonacci
      ([] (fibonacci 1 2))
      ([n m] (cons n (lazy-seq (fibonacci m (+ n m)))))))))))
