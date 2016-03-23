class Bst
  include Enumerable
  attr_reader :value
  attr_accessor :left, :right

  def initialize(value)
    @value = value
  end

  def insert(v)
    case value <=> v
    when 1 then insert_left(v)
    when -1 then insert_right(v)
    when 0 then insert_left(v)
    end
  end

  def data
    value
  end

  def each(&block)
    left && left.each(&block)
    block.call(data)
    right && right.each(&block)
  end

  private

  def insert_left(v)
    if left
      left.insert(v)
    else
      self.left = Bst.new(v)
    end
  end

  def insert_right(v)
    if right
      right.insert(v)
    else
      self.right = Bst.new(v)
    end
  end
end
