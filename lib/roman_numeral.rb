class RomanNumeral
  def initialize(number)
    @number = number
  end

  def to_arabic_numeral (number = nil)
    if number.nil?
      number = @number
    end
    #Single char conversions first
    if number.length == 1
      case number
        when "I"
          return 1
      end
    else
      to_arabic_numeral(number[-1]) + to_arabic_numeral(number[0..-2])
    end
  end

end