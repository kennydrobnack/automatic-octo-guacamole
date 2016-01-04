class RomanNumeral
  def initialize(number)
    @number = number
  end

	def single_character_conversion(number)
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
      end
	end

	def two_character_conversion(number)
      case number
        when "IV"
          return 4
        when "IX"
          return 9
        when "XL"
          return 40
        when "XC"
          return 90 
        when "CD"
          return 400
        when "CM"
          return 900 
      end
	end

  def to_arabic_numeral (number = nil)
    if number.nil?
      number = @number
    end
    if number.length < 1
      return 0
    end
		if /[^IVXLCDM]/.match(number)
			return "Invalid Roman Numeral #{number}"
		end
    #Single char conversions first
    if number.length == 1
			return single_character_conversion(number)
    elsif number.length >= 2
      last_two = number[-2..-1]
			if /IV|IX|XL|XC|CD|CM/.match(last_two)
				return two_character_conversion(last_two) + to_arabic_numeral(number[0..-3])
			end
    end
    return to_arabic_numeral(number[-1]) + to_arabic_numeral(number[0..-2])
  end

end
