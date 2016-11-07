class Printer
  def self.print(superheroes)
    superheroes.each_with_index do |superhero, i|
      puts " #{i+1}) #{superhero.name}"
    end
  end
end