# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#

def staircase(num)
  to_return = {}
  1.upto num do |x|
    next if x.even? == true
    all_nums = Array.new(x) {|i| i + 1}
    even_nums = all_nums.select {|i| i.even? == true}
    to_return[x] = even_nums
  end
  to_return
end

# Examples:
puts staircase(1)  # => {1 => []}
puts staircase(2)  # => {1 => []}
puts staircase(3)  # => {1 => [], 3 => [2]}
puts staircase(4)  # => {1 => [], 3 => [2]}
puts staircase(5)  # => {1 => [], 3 => [2], 5 =>[2, 4]}
