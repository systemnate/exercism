class PhoneNumber
  attr_reader :phone_number

  def initialize(phone_number)
    @phone_number = phone_number
  end

  def number
    scan = phone_number.scan(/[0-9]/)
    letter_scan = phone_number.scan(/[a-zA-Z]/)
    if scan.size == 10 and letter_scan.size == 0
      return scan.join("")
    elsif scan.size == 11 and scan[0] == "1"
      return scan[1..10].join("")
    else
      return "0000000000"
    end
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{area_code}) #{first_part}-#{last_part}"
  end

  private

  def first_part
    number[3..5]
  end

  def last_part
    number[6..10]
  end
end
