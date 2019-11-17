require "./wheel.rb"

class GearHash
  attr_reader :chainring, :cog, :wheel
  def initialize(attr)
    @chainring = attr[:chainring]
    @cog = attr[:cog]
    @wheel = attr[:wheel]
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * diameter
  end

  def diameter
    wheel.diameter
  end
end

puts GearHash.new(
  chainring: 52,
  cog: 11,
  wheel: Wheel.new(26, 1.5)).gear_inches

puts GearHash.new(
  chainring: 52,
  cog: 11,
  wheel: Wheel.new(26, 1.5)).ratio
