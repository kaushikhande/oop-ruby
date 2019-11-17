require "./gear_again.rb"
class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim, @tire = rim, tire
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end

wheel = Wheel.new(26, 1.5)
# puts wheel.circumference

# puts GearAgain.new(52, 11, wheel).gear_inches
# puts GearAgain.new(52, 11).ratio
