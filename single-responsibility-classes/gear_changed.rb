class GearChanged
  attr_reader :chainring, :cog, :wheel
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @wheel = Wheel.new(rim, tire)
  end

  def ratio
    chainring / cog.to_f 
  end

  def gear_inches
    ratio * wheel.diameter
  end

  Wheel = Struct.new(:rim, :tire) do
    def diameter
      rim + tire * 2
    end
  end
end

puts GearChanged.new(52, 11, 622, 20).ratio
puts GearChanged.new(30, 27, 622, 20).ratio

puts '---------------------'

puts GearChanged.new(52, 11, 622, 20).gear_inches
puts GearChanged.new(30, 27, 622, 20).gear_inches
