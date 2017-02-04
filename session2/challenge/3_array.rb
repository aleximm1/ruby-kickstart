# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    odd = false
    array = []
    each_char do |x|
      if odd == true
        odd = false
      else
        array << x
        odd = true
      end
    end
    array
  end
end
