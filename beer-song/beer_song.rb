class BeerSong
  VERSION = 2

  def verse(n)
    lyric(n)
  end

  def verses(start, stop)
    start.downto(stop).map { |num| lyric(num) }.join("\n")
  end

  def lyrics
    verses(99,0)
  end

  private
  
  def lyric(n)
    if n > 2
      "#{n} bottles of beer on the wall, #{n} bottles of beer.\nTake one down and pass it around, #{n - 1} bottles of beer on the wall.\n"
    elsif n == 2
      "#{n} bottles of beer on the wall, #{n} bottles of beer.\nTake one down and pass it around, #{n - 1} bottle of beer on the wall.\n"
    elsif n == 1
      "#{n} bottle of beer on the wall, #{n} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    elsif n == 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end
end
