







(def a 1)
; Now a is 1

(def a 2)
; Now a is 2

;; When we say (def foo 42) it creates a new "binding" of the symbol
;; "foo" with the value 42. 

;; What really happens is that the symbol "foo" now "points" to the value 42. 

;; Once a binding has been created, there is no way to mutate value 
;; pointed to by its binding. As a result, it's also possible for 
;; multiple such bindings to point to the same value (identical in some 
;; cases). 

;; When you say (def foo 55) again it creates a new binding for the 
;; symbol "foo" and the value 55.
