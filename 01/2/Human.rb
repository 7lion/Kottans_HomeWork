class Human
  attr_accessor :name

  def initialize(name)
    @name = name.capitalize
  end

  def invite(human)
    human
  end

  def to_drink(beverage)
    puts "#{self.name} agrees to drink some #{beverage.name} with you!"
  end
end