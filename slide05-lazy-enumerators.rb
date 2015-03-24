puts (1..1.0/0).lazy.map { |x| 2*x }.take(10).to_a
