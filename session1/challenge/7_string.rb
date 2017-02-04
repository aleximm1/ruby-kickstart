# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  r = false
  output_string = ""
  string.each_char do |x|
    if r == true
      output_string << x
      r = false
    end
    if x == "r" || x == "R"
      r = true
    end
  end
  puts output_string
end

pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"
