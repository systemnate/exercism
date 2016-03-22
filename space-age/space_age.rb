class SpaceAge
  attr_reader :seconds

  EARTH_SECONDS = 31557600.0

  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    seconds / EARTH_SECONDS
  end

  def on_mercury
    seconds / (EARTH_SECONDS * 0.2408467)
  end

  def on_venus
    seconds / (EARTH_SECONDS * 0.61519726)
  end

  def on_mars
    seconds / (EARTH_SECONDS * 1.8808158)
  end

  def on_jupiter
    seconds / (EARTH_SECONDS * 11.8808158)
  end

  def on_saturn
    seconds / (EARTH_SECONDS * 29.447498)
  end

  def on_uranus
    seconds / (EARTH_SECONDS * 84.016846)
  end

  def on_neptune
    seconds / (EARTH_SECONDS * 164.79132)
  end
end
