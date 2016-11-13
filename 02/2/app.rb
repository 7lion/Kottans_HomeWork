require_relative './superhero'
require_relative './team'

superman = Superhero.new(name: 'Superman', strength: 90, agility: 80, intelligence: 75)
batman = Superhero.new(name: 'Batman', strength: 60, agility: 85, intelligence: 80)
thing = Superhero.new(name: 'Thing', strength: 80, agility: 90, intelligence: 55)
kostiantyn = Superhero.new(name: 'Kostiantyn', strength: 97, agility: 95, intelligence: 99)

team = Team.new
team.add_many([superman, batman, thing, kostiantyn])

puts '1. Select methods:'
puts 'All team:'
p team.select.map { |e| e.name }

puts 'Superheroes who intelligence is more than 78'
p team.select { |x| x.intelligence > 78 }.map { |e| e.name }

puts '1. Reduce methods:'
puts 'Team strength'
p team.reduce(:strength, :+)
puts 'Team agility'
p team.reduce(:agility, :+)
puts 'Team intelligence'
p team.reduce(:intelligence, :+)

puts '2. Reduce minmax'
puts 'MinMax by strength'
p team.minmax(:strength)
puts 'MinMax by agility'
p team.minmax(:agility)