class School
  VERSION = 1
  attr_accessor :grade_hash
  
  def initialize
    @grade_hash = Hash.new { |k, v| k[v] = [] }
  end

  def add(name, grade)
    grade_hash[grade] << name
    grade_hash[grade].sort!
  end

  def grade(g)
    grade_hash[g]
  end

  def to_h
    grade_hash.sort.to_h
  end
end
