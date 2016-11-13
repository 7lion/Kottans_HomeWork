require './02/1/superhero'

describe Superhero do
  let(:superhero) { Superhero.new(name: 'Batman', strength: 2, agility: 5.5, intelligence: 10) }

  it 'is instance of Comparable' do
    expect(superhero).to be_a(Comparable)
  end

  context '.initialize' do
    it 'initialised with valid attributes' do
      expect(superhero.name).to eq('Batman')
      expect(superhero.strength).to eq(2)
      expect(superhero.agility).to eq(5.5)
      expect(superhero.intelligence).to eq(10)
    end
    it 'initialised with invalid attributes' do
      expect {
        Superhero.new(intelligence: 10)
      }.to raise_error(ArgumentError)
    end
  end
  context '.average_value' do
    it 'count average of superhero' do
      expect(superhero.average_value.round(1)).to eq(5.8)
    end
  end
  context '.<>' do
    it 'compare two superheroes' do
      batman = superhero
      spiderman = Superhero.new(name: 'Spiderman', strength: 6, agility: 10, intelligence: 3)
      expect(spiderman > batman).to eq(true)
      expect(spiderman < batman).to eq(false)
    end
  end
end