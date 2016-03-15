class Array
  def accumulate(&op)
    self.reduce([]) { |memo, obj| memo << op.(obj) }
  end
end
