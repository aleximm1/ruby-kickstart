# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
#odds_and_evens("abcdefg",true)    # => "bdf"
#odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  oddOrEven = 0
  new_string = ""
  string.each_char do |c|
    if return_odds == true
      if oddOrEven == 1
        new_string << c
        oddOrEven = 0
      else
        oddOrEven = 1
      end
    elsif return_odds == false
      if oddOrEven == 1
        oddOrEven = 0
      else
        new_string << c
        oddOrEven = 1
      end
    end
  end
  puts new_string
end

odds_and_evens("abcdefg",true)    # => "bdf"
odds_and_evens("abcdefg",false)   # => "aceg"
