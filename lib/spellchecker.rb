class Boiler

  def initialize
    @word_bank = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']
  end

def spellchecker(string)
    raise 'please only provide words' unless string.is_a?(String)
  word_array = string.split(" ")
  checked_word_array = word_array.map { |word| correct_spelling(word)
  }
  checked_word_array.join(" ")
end

private

def correct_spelling(word)
  if @word_bank.include?(word) || @word_bank.include?(word.downcase)
    word
  else 
    "~#{word}~"
  end
end

end
