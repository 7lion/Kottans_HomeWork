class SuperheroComparable
  def self.compare(hero_compare, hero_compare_with)
    if (hero_compare == hero_compare_with)
      puts "#{hero_compare.name} is equal to #{hero_compare_with.name}"
    elsif (hero_compare > hero_compare_with)
      puts "#{hero_compare.name} is better then #{hero_compare_with.name}"
    else
      puts "#{hero_compare_with.name} is better then #{hero_compare.name}"
    end
  end
end