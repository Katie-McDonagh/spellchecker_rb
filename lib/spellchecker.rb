def spellchecker(string) 
  word_bank = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']
  #if the string contains strings from the array word bank
  #do nothing but print the original string
  word_array = string.split(" ")
  checked_word_array = word_array.map { |word| 
    if word_bank.include?(word) || word_bank.include?(word.downcase)
      word
    else 
      "~#{word}~"
    end
  }
  checked_word_array.join(" ")
end
