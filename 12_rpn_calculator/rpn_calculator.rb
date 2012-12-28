class RPNCalculator
  attr_accessor :calculator_stack

  def initialize
    @calculator_stack = []
  end

  def push(p_value)
    calculator_stack.push(p_value.to_f)
  end

  def plus
    calculator_stack.push(pop + pop)
  end

  def minus
    calculator_stack.push(pop - pop)
  end

  def divide
    calculator_stack.push(pop / pop)
  end

  def times
    calculator_stack.push(pop * pop)
  end  

  def pop
    value = calculator_stack.pop
    raise "calculator is empty" if value.nil?
    return value
  end

  def value
    calculator_stack[calculator_stack.length - 1]
  end

  def tokens(string_stack)
    string_stack.split(' ').collect! { |word| word.scan(/[\*\/\+-]/).empty? ? word.to_i: word.to_sym }
  end

  def evaluate(string_stack)
    tokens(string_stack).each do |word|
      case word
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        push word
      end
    end
    value
  end
end