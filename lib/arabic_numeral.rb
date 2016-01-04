class ArabicNumeral
  def initialize(number)
    @number = number
  end

	def convert_zero
		return ""
	end

	def convert_ones(number)
		return "I" * number
	end

	def convert_four
		return "IV"
	end

	def convert_five
		return "V"
	end

	def convert_nine
		return "IX"
	end

	def convert_tens(number)
		return "X" * (number/10).floor
	end

	def convert_forty
		return "XL"
	end

	def convert_fifty
		return "L"
	end

	def convert_ninety
		return "XC"
	end

	def convert_hundreds(number)
		return "C" * (number/100).floor
	end

	def convert_four_hundred
		return "CD"
	end

	def convert_five_hundred
		return "D"
	end 

	def convert_nine_hundred
		return "CM"
	end	

	def convert_thousands(number)
		return "M" * (number/1000).floor
	end 

  def to_roman_numeral(number = nil)
    if number.nil?
      number = @number
    end
    case number
      when 0 #Handle weird cases where we get to 0 - that means previous steps have done all conversions
        return ""
      when 1..3
        return convert_ones(number)
			when 4
				return convert_four
      when 5
				return convert_five
			when 5..8
        return convert_five + convert_ones(number - 5)
			when 9
				return convert_nine
			when 10..39
				return convert_tens(number) + to_roman_numeral(number % 10)
			when 40..49
				return convert_forty + to_roman_numeral(number - 40)
			when 50..89
				return convert_fifty + to_roman_numeral(number - 50)
			when 90..99
				return convert_ninety + to_roman_numeral(number - 90)
			when 100..399
				return convert_hundreds(number) + to_roman_numeral(number % 100)
			when 400..499
				return convert_four_hundred + to_roman_numeral(number - 400)
			when 500..899
				return convert_five_hundred + to_roman_numeral(number - 500)
			when 900..999
				return convert_nine_hundred + to_roman_numeral(number - 900)
			when 1000..3999
				return convert_thousands(number) + to_roman_numeral(number % 1000)
    end
    #Error case - this way we known something is broke instead of letting it silently fail
    return "Unknown number #{number}"
  end

end
