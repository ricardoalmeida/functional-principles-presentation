




#     Coping Data
#     [head | tail]

IO.puts fn ->

  list1 = [ 3, 2, 1 ]

  [4, 3, 2, 1] === [ 4 | list1 ]
end.()

# Performance Implications
#   Concurrence
#     No semaphores
#     No monitors
#     No locks
#     No race-conditions
#     No Deadlocks
#   Garbage Collection
#     Each process has its own heap
#     The data in your application is divvied up between these processes
#     Each individual heap is much, much smaller
#     As a result, garbage collection runs faster
