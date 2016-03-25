class Acronym
  VERSION = 1

  def self.abbreviate(given)
    given.split.map do |w|
      if w == w.upcase
        w
      else
        w.split(/(?=[A-Z])/).join(" ").split("-")
      end
    end.flatten.join(" ").split.map { |s| s[0].capitalize }.join
  end
end
