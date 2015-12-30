class ArabicNumeral
  def initialize(number)
    @number = number
  end

  def to_roman_numeral(number = nil)
    if number.nil?
      number = @number
    end
    case number
      when 0 #Handle weird cases where we get to 0 - that means previous steps have done all conversions
        return ""
      when 5 #The "5" symbols first. They cannot be repeated or subtracted
        return "V"
      when 50
        return "L"
      when 500
        return "D"
      when 1..3 #Repeatable symbols
        return "I" * number
      when 10..39
        mult = (number/10).floor
        return "X" * mult + to_roman_numeral(number - 10 * mult)
      when 100..399
        mult = (number/100).floor
        return "C" * mult + to_roman_numeral(number - 100 * mult)
      when 1000
        return "M"
      when 4 #Special cases for the minus ones
        return "IV"
      when 9
        return "IX"
      when 40..49
        return "XL" + to_roman_numeral(number - 40)
      when 1001..1989 #Now break off the biggest numbers
        return to_roman_numeral(1000) + to_roman_numeral(number - 1000)
      when 500..899
        return to_roman_numeral(500) + to_roman_numeral(number - 500)
      when 51..99
        return to_roman_numeral(50) + to_roman_numeral(number - 50)
      when 10..30
        return to_roman_numeral(10) + to_roman_numeral(number - 10)
      when 5..8
        return to_roman_numeral(5) + to_roman_numeral(number - 5)
    end
    return "Unknown number #{number}"
  end

end