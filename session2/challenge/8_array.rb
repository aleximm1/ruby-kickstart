# Given an array of elements, return true if any element shows up three times in a row
#
def got_three?(array)
  repeated = 0
  repeats = array[0]
    array.each do |x|
      if repeats == x
         repeated = repeated + 1
         if repeated == 3
           #puts true
           return true
         end
       else
         repeats = x
         repeated = 1
      end
    end
    #puts false
    return false
end
# Examples:
got_three? ([1, 2, 2, 2, 3])  # => true
got_three? (['a', 'a', 'b'])  # => false
got_three? (['a', 'a', 'a'])  # => true
got_three? ([1, 2, 1, 1])     # => false
