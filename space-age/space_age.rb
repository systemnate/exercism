class SpaceAge
  attr_reader :seconds
  EARTH_SECONDS = 31557600.0
  MAPPING = { "earth" => 1, "mercury" => 0.2408467, "venus" => 0.61519726, "mars" => 1.8808158,
              "jupiter" => 11.8808158, "saturn" => 29.447498, "uranus" => 84.016846, "neptune" => 164.79132  }

  def initialize(seconds)
    @seconds = seconds
  end

  def method_missing(method_sym, *args, &block)
    seconds / (EARTH_SECONDS * MAPPING[method_sym.to_s.split("_")[1]])
  end
end
