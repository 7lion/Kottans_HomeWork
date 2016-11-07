require_relative './superhero_comparable'
require_relative './superhero'
require_relative './printer'

superman = Superhero.new('Superman', 90, 80, 75)
batman = Superhero.new('Batman', 60, 85, 80)
thing = Superhero.new('Thing', 80, 90, 55)
kostiantyn = Superhero.new('Kostiantyn', 97, 95, 99)

puts '1. Superheroes compare:'

SuperheroComparable.compare(superman, batman)
SuperheroComparable.compare(thing, batman)
SuperheroComparable.compare(superman, kostiantyn)

superheroes = [superman, batman, thing, kostiantyn]

puts '2. Sort by average values:'
Printer.print(superheroes.sort.reverse)

puts '3. Sort by strength:'
Printer.print(superheroes.sort_by { |hero| hero.strength }.reverse)

puts '4. Sort by agility:'
Printer.print(superheroes.sort_by { |hero| hero.agility }.reverse)

puts '5. Sort by intelligence:'
Printer.print(superheroes.sort_by { |hero| hero.intelligence }.reverse)
