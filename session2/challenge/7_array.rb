# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
  def alternate_words(string)
    odd = true
    return_array = []
    array = string.split(" ")
    array.each do |x|
      #symbol_check = x.split
      #symbol_check.each do |y|
        #if y == /(\W|\d)/ && y != "'"
          x.gsub!(/[!@$%#{}^&*()-=_+:;,.<>?\|]/, "")
        #end
      #end
      if odd == true
        return_array << x
        odd = false
      else
        odd = true
      end
    end
    return_array
  end
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]
