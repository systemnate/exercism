class Raindrops
  VERSION = 3

  MAPPING = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(num)
    num_to_str = ""
    MAPPING.each do |key, value|
      num_to_str << value if num % key == 0
    end

    num_to_str.empty? ? num.to_s : num_to_str
  end
end
