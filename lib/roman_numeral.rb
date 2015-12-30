class RomanNumeral
  def initialize(number)
    @number = number
  end

  def to_arabic_numeral (number = nil)
    if number.nil?
      number = @number
    end
    #Single char conversions first
    case number
      when "I"
        return 1
    end
  end
end