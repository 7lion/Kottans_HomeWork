require_relative './Human'
require_relative './Drink'

volodya = Human.new 'volodya'
ira = Human.new 'ira'
coffee = Drink.new 'coffee'

volodya.invite(ira).to_drink coffee