class ArabicNumeral
  def initialize(number)
    @number = number
  end

  def to_roman_numeral(number = nil)
    if number.nil?
      number = @number
    end
    case number
      when 1..3 #Single Roman numerals first
        return "I" * number
      when 5
        return "V"
      when 10
        return "X"
      when 50
        return "L"
      when 100
        return "C"
      when 500
        return "D"
      when 1000
        return "M"
      when 9 #Special cases for the minus ones
        return "IX"
      when 1001..1989 #Now break off the biggest numbers
        return to_roman_numeral(1000) + to_roman_numeral(number - 1000)
      when 50..98
        return to_roman_numeral(50) + to_roman_numeral(number - 50)
      when 10..30
        return to_roman_numeral(10) + to_roman_numeral(number - 10)
      when 5..8
        return to_roman_numeral(5) + to_roman_numeral(number - 5)
    end
    return "Unknown number #{number}"
  end

end