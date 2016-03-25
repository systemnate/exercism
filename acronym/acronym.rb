class Acronym
  VERSION = 2

  def self.abbreviate(given)
    # split on capital letter followed by lower, then on space or "-", then capitalize/take first letter
    given.split(/(?=[A-Z][a-z])/).join(" ").split(/[\s\-]/).join(" ").split.map { |w| w[0].capitalize }.join
  end
end
