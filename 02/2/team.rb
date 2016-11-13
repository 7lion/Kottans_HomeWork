require_relative './superhero'
require_relative './custom_comparable'

class Team
  include CustomComparable

  def initialize
    @superheroes = []
  end

  def add_many(superheroes)
    raise ArgumentError unless superheroes.all? { |x| x.is_a? Superhero }

    @superheroes += superheroes
  end

  def each(&block)
    @superheroes.each(&block)
  end
end