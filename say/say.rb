class Say
  attr_reader :number
  
  NUMBER_MAPPING = {
    1_000_000_000 => 'billion',
    1_000_000 => 'million',
    1000 => 'thousand',
    100 => 'hundred',
    90 => 'ninety',
    80 => 'eighty',
    70 => 'seventy',
    60 => 'sixty',
    50 => 'fifty',
    40 => 'forty',
    30 => 'thirty',
    20 => 'twenty',
    19 => 'nineteen',
    18 => 'eighteen',
    17 => 'seventeen',
    16 => 'sixteen',
    15 => 'fifteen',
    14 => 'fourteen',
    13 => 'thirteen',
    12 => 'twelve',
    11 => 'eleven',
    10 => 'ten',
    9 => 'nine',
    8 => 'eight',
    7 => 'seven',
    6 => 'six',
    5 => 'five',
    4 => 'four',
    3 => 'three',
    2 => 'two',
    1 => 'one'
  }

  def initialize(number)
    unless (0...1000000000000).include?(number)
      raise ArgumentError,
        "#{number} was provided, but must be in range of 0 - 1_000_000_000_000"
    end
    @number = number
  end

  def in_english
    return "zero" if number == 0
    in_words(number)
  end

  private

  def in_words(int)
    str = ""
    NUMBER_MAPPING.each do |num, name|
      if int == 0
        return ""
      elsif int.to_s.length == 1 && int / num > 0
        return str + "#{name}"      
      elsif int < 100 && int / num > 0
        return str + "#{name}" if int % num == 0
        return str + "#{name}-" + in_words(int % num)
      elsif int / num > 0
        return (str + in_words(int/num) + " #{name} " + in_words(int%num)).strip
      end
    end
  end
end
