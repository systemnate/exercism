class Bob
  VERSION = 1

  def hey(phrase)
    if phrase.strip == ""
      return "Fine. Be that way!"
    elsif phrase == phrase.upcase and !(phrase.scan(/[a-zA-Z]+/).empty?)
      return "Whoa, chill out!"
    elsif phrase[-1] == "?"
      return "Sure."
    else
      return "Whatever."
    end
  end
end
