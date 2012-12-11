#Constants
NOT_CAPITALIZED_WORDS = ["and", "the", "over"]

# Says word
def echo(word_to_say)
  word_to_say
end

# Says word(s) in upper case
def shout(word_to_say)
  word_to_say.upcase
end

# Says word(s) many times
def repeat(word_to_say, times_to_repeat = 2)
  ((word_to_say + " ") * times_to_repeat).chop
end

# Returns first letter(s)
def start_of_word(word_to_say, letters_to_return = 1)
  word_to_say[0, letters_to_return]
end

# Returns first word in string
def first_word(string_to_say)
  string_to_say.split(" ")[0]
end

# Titleize string
def titleize(string_to_say)
  output_string = ""
  string_to_say.each(" ") do |curr_word|
    # Capitalize first word and doesn't capitalize 'little words'
    if !(NOT_CAPITALIZED_WORDS.any? { |little_word| curr_word[little_word] }) || output_string.empty?
      curr_word.capitalize!
    end
    output_string += curr_word
  end
  output_string
end