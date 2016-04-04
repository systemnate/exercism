class WordProblem
  MAPPING = { "plus" => :+, "minus" => :-, "multiplied" => :*, "divided" => :/ }
  def initialize(problem)
    @problem = problem
  end

  def answer
    nums   = parse_numbers
    syms  = parse_word
    raise ArgumentError if syms.empty?
    eval(nums.zip(syms).flatten.compact.map(&:to_s).join(" "))
  end

  private

  def parse_numbers
    parsed_nums = @problem.scan(/[-*\d]+/).each_with_index.map do |c,i|
      if i.even?
        "(" + c
      else
        c + ")"
      end
    end
    if parsed_nums.size.odd?
      parsed_nums[-1] = parsed_nums[-1] + ")"
    end
    parsed_nums
  end

  def parse_word
    words = []
    @problem.split.each do |word|
      if MAPPING.keys.include?(word)
        words << MAPPING[word]
      end
    end
    words
  end
end
