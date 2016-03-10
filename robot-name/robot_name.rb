class Robot
  VERSION = 1

  @@names = []

  def initialize
    @name = generate_name
  end

  def name
    @name = @name.empty? ? generate_name : @name
  end

  def generate_name
    gn = first_part_of_name + second_part_of_name
    until !@@names.include?(gn)
      gn = first_part_of_name + second_part_of_name
    end
    gn
  end

  def first_part_of_name
    n = ""
    2.times { n << ('A'..'Z').to_a.sample }
    n
  end

  def second_part_of_name
    n = ""
    3.times { n << (1..9).to_a.sample.to_s }
    n
  end

  def reset
    @name = ""
  end
end
