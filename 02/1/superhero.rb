class Superhero
  include Comparable

  attr_reader :name, :strength, :agility, :intelligence

  def initialize(args)
    raise ArgumentError if args[:name].nil?

    @name = args[:name].to_s
    @strength = args[:strength].to_f
    @agility = args[:agility].to_f
    @intelligence = args[:intelligence].to_f
  end

  def average_value
    ((strength + agility + intelligence) / 3).round(1)
  end

  def <=>(superhero)
    raise ArgumentError "Superhero must by instead of #{self.class.name}" unless superhero.is_a? (self.class)

    self.average_value <=> superhero.average_value
  end
end