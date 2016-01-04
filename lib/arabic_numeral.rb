class ArabicNumeral
  def initialize(number)
    @number = number
  end

	def convert_zero
		return ""
	end

	def convert_five
		return "V"
	end

	def convert_fifty
		return "L"
	end

	def convert_five_hundred
		return "D"
	end 

	def convert_ones(number)
		return "I" * number
	end

	def convert_tens(number)
		return "X" * (number/10).floor
	end

	def convert_hundreds(number)
		return "C" * (number/100).floor
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
      when 5 #The "5" symbols first. They cannot be repeated or subtracted
        return convert_five
      when 50
        return convert_fifty
      when 500
        return convert_five_hundred
      when 1..3 #Repeatable symbols
        return convert_ones(number)
      when 10..39
        mult = (number/10).floor
        return convert_tens(number) + to_roman_numeral(number - 10 * mult)
      when 100..399
        mult = (number/100).floor
        return convert_hundreds(number) + to_roman_numeral(number - 100 * mult)
      when 1000..3999
        mult = (number/1000).floor
        return convert_thousands(number) + to_roman_numeral(number - 1000 * mult)
      when 4 #Special cases for the minus ones
        return "IV"
      when 9
        return "IX"
      when 40..49
        return "XL" + to_roman_numeral(number - 40)
      when 90..99
        return "XC" + to_roman_numeral(number - 90)
      when 400..499
        return "CD" + to_roman_numeral(number - 400)
      when 900..999
        return "CM" + to_roman_numeral(number - 900)
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
    #Error case - this way we known something is broke instead of letting it silently fail
    return "Unknown number #{number}"
  end

end
