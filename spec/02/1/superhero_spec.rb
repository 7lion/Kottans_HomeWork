require './02/1/superhero'

describe Superhero do
  let(:superhero) { Superhero.new(name: 'Batman', strength: 2, agility: 5.5, intelligence: 10) }

  it 'is instance of Comparable' do
    expect(superhero).to be_an(Comparable)
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
      expect(superhero.average_value).to eq(5.8)
    end
  end
end