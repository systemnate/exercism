class Matrix
  attr_reader :matrix_str

  def initialize(matrix_str)
    @matrix_str = matrix_str
  end

  def rows
    matrix_str.split("\n").map { |r| r.split(" ").map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end
