ENTER_FIRST_NUMBER = 'Please enter the first number: '
ENTER_OPERATOR = 'Operator (+, -, *, /) : '
ENTER_SECOND_NUMBER = 'Please enter the second number: '

class Validator
  AVAILABLE_OPERATORS = ['+', '-', '*', '/']
  INVALID_OPERATOR = 'Invalid operator, try again: '

  def valid_operator? (operator)
    unless AVAILABLE_OPERATORS.include? operator
      print INVALID_OPERATOR
      operator.replace(gets.chomp.to_s)
      self.valid_operator? operator
    end
  end
end

validator = Validator.new

print ENTER_FIRST_NUMBER
a = gets.chomp.to_f

print ENTER_OPERATOR
operator = gets.chomp.to_s
validator.valid_operator? operator

print ENTER_SECOND_NUMBER
b = gets.chomp.to_f

puts "Result: #{a.send(operator, b)} \r\n"