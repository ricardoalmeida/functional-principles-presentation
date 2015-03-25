# https://www.youtube.com/watch?t=223&v=FITJMJjASUs

# Higher Order Function

puts -> {
  make_adder = ->(x) {
    ->(n) { n + 1 }
  }

  add1 = make_adder.(1)
  mul3 = ->(n) { n * 3 }

  compose = ->(f, g) {
    ->(n) { f.(g.(n)) }
  }

  mul3add1 = compose.(mul3, add1)

  mul3add1.(10)

}.()


# Avoid side effect
# But many created objects
