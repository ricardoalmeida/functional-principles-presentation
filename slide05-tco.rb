module Math
  def self.factorial_tco(n, acc=1)
    n < 1 ? acc : factorial_tco(n-1, n*acc)
  end
end

puts Math.factorial_tco(5)
