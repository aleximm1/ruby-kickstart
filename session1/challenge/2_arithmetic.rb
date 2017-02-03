# fill out the method below, then run the tests with
#   $ rake 1:2


# Given two numbers, a and b, return half of whichever is smallest, as a float
#
#arithmetic2(1, 2)    # => 0.5
#arithmetic2(19, 10)  # => 5.0
#arithmetic2(-6, -7)  # => -3.5

def arithmetic2(a, b)

  n = a
  if b < n
    n = b
  end
  n = n.to_f
  n = n / 2
  puts n
end

arithmetic2(1, 2)
arithmetic2(19, 10)
arithmetic2(-6, -7)
