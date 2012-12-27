class Book
  #Constants
  NOT_CAPITALIZED_WORDS = ["and", "of", "in", "the", "a", "an"]

  def title=(new_title)
    @title = ""
    new_title.each(" ") do |curr_word|
      # Capitalize first word and doesn't capitalize 'little words'
      if !(NOT_CAPITALIZED_WORDS.any? { |little_word| curr_word.chop == little_word }) || @title.empty?
        curr_word.capitalize!
      end
      @title += curr_word
    end
  end

  def title
    @title
  end
end