# Constants
ENGLISH_VOVELS = ["a", "e", "i", "o", "u", "y"]
SINGLE_PHOEMES = ["qu", "sch"]
END_OF_PIG_WORDS = "ay"
REGULAIR_PUNCTUATION = /[,-\.;:!]+/

# Funy translation function
def translate(word_translate)
  output_string = ""
  word_translate.split(" ").each do |word|

    #Punctuation (Test-driving bonus)
    punctuation = word.scan(REGULAIR_PUNCTUATION).to_s
    word = word.split(REGULAIR_PUNCTUATION).to_s

    #is capitalized (Test-driving bonus)
    is_capitalized = word != word.downcase

    #Phoemes
    SINGLE_PHOEMES.each do |poeme|
      if (word[0, poeme.length].downcase == poeme)
        word = word.slice(poeme.length..-1) + word[0, poeme.length]
      end
    end

    #Other word parts
    while (ENGLISH_VOVELS.index(word[0, 1].downcase) == nil && word.length > 1)
      word = word.slice(1..-1) + word[0, 1]
    end

    #is capitalized (Test-driving bonus)
    word.capitalize! if is_capitalized

    # It`s only punctuation or one word?
    output_string += (word.length > 1 ? word + END_OF_PIG_WORDS : "") + punctuation + " "
  end
  output_string.chop
end