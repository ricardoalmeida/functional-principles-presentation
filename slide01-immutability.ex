





# FUNCTIONAL PROGRAMMING
#
#   Immutability in Elixir
#     Pattern Matching

IO.puts fn ->
  a = 1
  1 = a
  2 = a

  # a = 2
  # ^a = 1

  # [a, b] = [1, 2]
  # [a, a] = [1, 2]
  # a + b
end.()

# Elixir’s pattern matching is similar to Erlang’s
# (the main difference being that Elixir allows a match
# to assign to a variable that was assigned in a prior match,
# whereas in Erlang a variable can be assigned only once).
