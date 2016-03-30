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

  def saddle_points
    points = []
    rows.each_with_index do |row, x|
      row.each_with_index do |val, y|
        points << [x,y] if saddle_point?(val,x,y)
      end
    end
    points
  end

  private

  def saddle_point?(val, x, y)
    val == rows[x].max && val == columns[y].min
  end
end
