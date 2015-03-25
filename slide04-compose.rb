# https://www.youtube.com/watch?t=223&v=FITJMJjASUs

puts -> {
  make_adder = ->(x) {
    ->(n) { n + 1 }
  }

  compose = ->(f, g) {
    ->(n) { f.(g.(n)) }
  }

  add1 = make_adder.(1)
  mul3 = ->(n) { n * 3 }

  mul3add1 = compose.(mul3, add1)

  mul3add1.(10)

}.()
