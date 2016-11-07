class Superhero
  include Comparable
  attr_reader :name, :strength, :agility, :intelligence

  def initialize(name, strength, agility, intelligence)
    @name = name
    @strength = strength
    @agility = agility
    @intelligence = intelligence
  end

  def average_value
    (@strength + @agility + @intelligence) / 3
  end

  def <=>(superhero)
    self.average_value <=> superhero.average_value
  end
end