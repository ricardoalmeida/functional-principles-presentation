







;; http://lucasas.github.io/blog/2014/12/10/pattern-matching-clojure-erlang/


(use '[clojure.core.match :only (match)])

(def numeros (range 1 101))

(doseq [n numeros]
  (println
    (match [(mod n 3) (mod n 5)]
      [0 0] "FizzBuzz"
      [0 _] "Fizz"
      [_ 0] "Buzz"
      :else n)))
