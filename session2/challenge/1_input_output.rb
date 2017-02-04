# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  # your code goes here
  print "enter first number:"
  n = gets.chomp
  n = n.to_i
  print "enter second number:"
  b = gets.chomp
  b = b.to_i
  sum = n + b
  diff = n - b
  prod = n * b
  puts sum
  puts diff
  puts prod
end

sum_difference_product
