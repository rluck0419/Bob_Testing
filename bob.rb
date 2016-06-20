class Bob
  FINE = 'Fine. Be that way!'
  SURE = 'Sure.'
  WHOA = 'Whoa, chill out!'
  WHATEVER = 'Whatever.'

  def hey(text)
    return FINE if empty_string?(text)
    return check_question(text) if numeric_question?(text)
    return WHOA if shouting?(text)
    return check_question(text)
  end

  private
  
  def check_question(text)
    return SURE if text[-1] == '?'
    return WHATEVER
  end

  def empty_string?(text)
    text.strip.length.zero?
  end

  def shouting?(text)
    text == text.upcase
  end

  def numeric_question?(text)
    text == text.downcase
  end
end
