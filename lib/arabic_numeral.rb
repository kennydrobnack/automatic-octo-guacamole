class ArabicNumeral
  def initialize(number)
    @number = number
  end

  def to_roman_numeral(number = nil)
    if number.nil?
      number = @number
    end
    case number
      when 1..3
        return "I" * number
    end
    return "Unknown number #{number}"
  end

end