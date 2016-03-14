class Sieve
  attr_reader :n

  def initialize(n)
    @n = n
  end

  def primes
    primes_arr = (2..n).to_a
    (0..Math.sqrt(n)).each do |i|
      n = primes_arr[i]
      (i + n).step(primes_arr.size - 1, n) { |j| primes_arr[j] = nil } unless n.nil?
    end
    primes_arr.compact
  end
end
