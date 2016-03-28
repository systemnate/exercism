class Queens
  attr_reader :opts

  DEFAULT = { white: [0,3], black: [7,3] }

  def initialize(opts = {})
    @opts = DEFAULT.merge(opts)
    if @opts[:white] == @opts[:black]
      raise ArgumentError, 
        "white and black cannot start on same square!"
    end
  end

  def white
    opts[:white]
  end

  def black
    opts[:black]
  end

  def to_s
    str = ""
    array.each do |a|
      str << a.join.strip + "\n"
    end
    str.chomp
  end

  def attack?
    (attack_line? or attack_diagonal?) ? true : false
  end

  private

  def array
    arr = []
    8.times { arr << Array.new(8, "_ ") }
    arr[white.first][white.last] = "W "
    arr[black.first][black.last] = "B "
    arr
  end

  def attack_diagonal?
    (white.first - black.first).abs == (white.last - black.last).abs
  end

  def attack_line?
    white[0] == black[0] or white[1] == black[1] ? true : false
  end
end
