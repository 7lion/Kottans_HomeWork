class Drink
  attr_accessor :name

  def initialize(name)
    @name = name.capitalize
  end
end