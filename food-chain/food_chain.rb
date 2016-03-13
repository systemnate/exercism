class FoodChain
  VERSION = 1
  def self.song
    song_lyrics = ""
    swallowed_lyrics = {
      "fly"    => "",
      "spider" => "wriggled and jiggled and tickled inside her",
      "bird"   => "How absurd to swallow a bird!",
      "cat"    => "Imagine that, to swallow a cat!",
      "dog"    => "What a hog, to swallow a dog!",
      "goat"   => "Just opened her throat and swallowed a goat!",
      "cow"    => "I don't know how she swallowed a cow!",
      "horse"  => "She's dead, of course!\n"
    }
    last = "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    swallowed = ""
    swallowed_lyrics.each_with_index do |(animal, lyrics),index|
      if index != 0
        previous = swallowed_lyrics.to_a[index-1][0]
      else
        previous = swallowed_lyrics.to_a[0][0]
      end
      song_lyrics << "I know an old lady who swallowed a #{animal}.\n"
      if animal == "horse"
        song_lyrics << swallowed_lyrics["horse"]
        break
      end
      if animal == "spider"
        song_lyrics << "It #{lyrics}.\n"
      else
        song_lyrics << "#{lyrics}\n" if animal != "fly"
      end
      if animal != "fly"
        temp_lyrics = "She swallowed the #{animal} to catch the #{previous}"
        if previous == "spider"
          temp_lyrics << " that #{swallowed_lyrics["spider"]}.\n"
        else
          temp_lyrics << ".\n"
        end
        swallowed.prepend(temp_lyrics)
      end
      song_lyrics << swallowed
      song_lyrics << last
    end
    song_lyrics
  end
end

