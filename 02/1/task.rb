require_relative './superhero'

superman = Superhero.new(name: 'Superman', strength: 90, agility: 80, intelegent: 75)
batman = Superhero.new(name: 'Batman', strength: 60, agility: 85, intelegent: 80)
thing = Superhero.new(name: 'Thing', strength: 80, agility: 90, intelegent: 55)
kostiantyn = Superhero.new(name: 'Kostiantyn', strength: 97, agility: 95, intelegent: 99)

puts '1. Superheroes compare:'

superheroes = [superman, batman, thing, kostiantyn]
p superheroes.max.name

puts '2. Sort by average values:'
p superheroes.sort.reverse.map { |hero| hero.name }

puts '3. Sort by strength:'
p superheroes.sort_by(&:strength).reverse.map { |hero| hero.name }

puts '4. Sort by agility:'
p superheroes.sort_by(&:agility).reverse.map { |hero| hero.name }

puts '5. Sort by intelligence:'
p superheroes.sort_by(&:intelligence).reverse.map { |hero| hero.name }