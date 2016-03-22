class BeerSong
  VERSION = 1

  def verse(n)
    beer_on_wall = beer_on_the_wall(n)
    beer_left = beer_left_on_the_wall(n)
    "#{beer_on_the_wall(n)}#{beer_left_on_the_wall(n)}"
  end

  def verses(starting, ending)
    nums = starting.downto(ending).to_a
    song = ""
    nums.each do |n|
      song << verse(n) + "\n"
    end
    song.chop
  end

  def beer_on_the_wall(n)
    if n > 0
      bottles = n == 1 ? "bottle" : "bottles"
      "#{n} #{bottles} of beer on the wall, #{n} #{bottles} of beer.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n"
    end
  end

  def beer_left_on_the_wall(n)
    if n > 0
      of_beer = "of beer on the wall.\n"
      take_down = n-1 == 0 ? "it" : "one"
      last_part = case n-1
                  when 1 then "#{n-1} bottle #{of_beer}"
                  when 0 then "no more bottles #{of_beer}"
                  else "#{n-1} bottles #{of_beer}"
                  end
      "Take #{take_down} down and pass it around, #{last_part}"
    else
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def lyrics
    verses(99,0)
  end
end
