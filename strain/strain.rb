class Array
  def keep
    each_with_object([]) do |item, obj|
      obj << item if yield(item)
    end
  end

  def discard
    keep { |item| !yield(item) }
  end
end
