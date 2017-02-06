# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#

def spiral_access(arrays, i = 0, &block)
  y_max = arrays.length - 1
  x_max = arrays.first.length - 1
  return if y_max/2 < i || x_max/2 < i
  i.upto x_max-i do |x|
    block.call arrays[i][x]
  end
  (i + 1).upto y_max-i do |y|
    block.call arrays[y][x_max-i]
  end
  (x_max - 1 - i).downto i do |x|
    block.call arrays[y_max-i][x]
  end
  (y_max - 1 - i).downto i+1 do |y|
    block.call arrays[y][i]
  end
  spiral_access arrays, i+1, &block
end

# Example:
two_d = [
  [ 1,  2,  3,  4, 5],
  [16, 17, 18, 19, 6],
  [15, 24, 25, 20, 7],
  [14, 23, 22, 21, 8],
  [13, 12, 11, 10, 9],
]
order = []
spiral_access two_d do |i|
  order << i
end
print order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
