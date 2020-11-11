def spellchecker(string) 
  word_bank = ['one', 'two']
  #if the string contains strings from the array word bank
  #do nothing but print the original string

  if word_bank.include?(string)
    return string
  else 
    return "~#{string}~"
  end
end