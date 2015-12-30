class RomanNumeral
  def initialize(number)
    @number = number
  end

  def to_arabic_numeral (number = nil)
    if number.nil?
      number = @number
    end
    if number.length < 1
      return 0
    end
    #Single char conversions first
    if number.length == 1
      case number
        when "I"
          return 1
        when "V"
          return 5
        when "X"
          return 10
        when "L"
          return 50
        when "C"
          return 100
        when "D"
          return 500
        when "M"
          return 1000
        else
          return 0
      end
    #Two character combinations
    elsif number.length == 2
      last_two = number[-2..-1]
      case last_two
        when "IX"
          return 9
      end
    end
    return to_arabic_numeral(number[-1]) + to_arabic_numeral(number[0..-2])
  end

end